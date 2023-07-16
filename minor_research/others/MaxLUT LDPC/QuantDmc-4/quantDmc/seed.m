function means = seed( data,k )
%KLSEED k-means++ seeding using KL divergence
%   Iteratively choose means according to weight of each data point

n = size(data,1);
means(1,:) = data(randi(n),:); % randomly choose the first mean
init = 2;
% [~,idx] = max(data);
% for i = 1:in
%     means(i,:) = data(idx(i),:);
% end
% init = in+1;
for i=init:k % iteratively choose the next mean
    pM = zeros(1,n);
    for j = 1:n % for each data point compute its distance from each already chosen mean
        dmin = inf;
        for jj = 1:size(means,1)
            kld = data(j,:).*log(data(j,:)./means(jj,:));
            kld(isnan(kld)) = 0;
            d = sum(kld,2); % calculate distance as KL divergence
            if d < dmin
                dmin = d; % among all the distances choose the minimum as the weight of this data point
            end
        end
        pM(j) = dmin^2;
    end
    
    % choose each data point with probability pM as the next mean
    pM = pM/sum(pM); % normalize
    cM = cumsum([0 pM(1:end-1)]); % build cumulative probability
    nextmean = find(cM < rand,1,'last'); % generate random sample according to pM
    means(i,:) = data(nextmean,:);
end