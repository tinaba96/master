%This version for LDPC Workshop 2011 presentation plots


clear all
%close all
figure(1);clf;

FontSize = 12;


%K=8 and OS=50 => OS=400 is kind of the default for fine quantization
K = 8;


Kch = 2; %OS*K is total number of samples;
Kch = 40;
LV = 40;

Klist = [8 8];
l = cell(2,1);
red = [0.8 0.1 0.1];
l{1} = {'r-','linewidth',2,'color',red};
l{2} = {'k--','linewidth',1};


KchList = [2000 31];
LVlist = [40 400];
varScale = 4;
Klist = [8 8];
l = cell(2,1);
red = [0.8 0.1 0.1];
l{1} = {'r-','linewidth',2,'color',red};
l{2} = {'k--','linewidth',2};
hax = cell(1,2);
label = {n2s(' DMC with ',KchList(1),' outputs'), n2s('  DMC with ',KchList(2),' outputs')};
    labelpos(1,:) = [-1.90 0.33];
    labelpos(2,:) = [-1.66 0.24];

for kk = 1:length(KchList)
    Kch = KchList(kk);
    LV = LVlist(kk);
    K = Klist(kk);
    
    varhigh = 0.6;
    varlow = 0.1;
    varlist = linspace(varlow,varhigh,LV);
    clear Qs
    for sel = 1:LV
        plyes = false;
        if sel == 1
            subplot(3,1,3);
            plyes = true;
        elseif sel == LV
            subplot(3,1,1);
            plyes = true;
        else
            subplot(3,1,2);
        end
        if kk == 1
            cla
        else
            plyes = false;
        end
        
        
        xlim([-2 2])
        var = varlist(sel);
        
        [P,Quantizer,Boundary] = biAwgn2Dmc([varScale 1] * var,Kch) ;
        P = P / 2;
        
        in = find(P < eps);
        P(in) = 10*eps;
        P = P / sum(sum(P));
        
        [Q,mi] = quantBiDmc(P,K);
        
        for ii = 1:size(Q,1)
            t = find(Q(ii,:) == 1);
            %fprintf('Row %d: %d ~ %d \n',ii,min(t),max(t));
            ib(ii) = max(t);
        end
        
        if plyes
            t = linspace(-2,2,1001);
            s1 = gauss(t,-1,var*varScale);
            plot(t, s1,'b-','linewidth',2);

            hold on
            s2=gauss(t,+1,var);
            plot(t, s2,'b-','linewidth',2);
            
            if sel == LV
                %plot([-1 -1],[0 gauss(-1,-1,var*varScale)],'k-')
                %plot([ 1  1],[0 gauss( 1, 1,var)],'k-')
            end
            %ha = addlabel(n2s('\sigma_{-1}^2=',var*varScale),-1,t,max(s1,s2));
            ha = addlabel(n2s('\sigma_{-1}^2=',var*varScale),1,-1);
            set(ha,'fontsize',FontSize);
            set(ha,'horizontalalignment','center');
            set(ha,'verticalalignment','bottom');
            x = get(ha,'position');x(2) = x(2) + 0.03;set(ha,'position',x)
            if sel == 1;
                set(ha,'verticalalignment','top');
                x = get(ha,'position');x(2) = x(2) + 0.03;set(ha,'position',x)
            end
            
            %ha = addlabel(n2s('\sigma_{+1}^2=',var),1,0.6);
            %set(ha,'fontsize',FontSize);
            
            set(ha,'horizontalalignment','right');
            set(ha,'verticalalignment','bottom');
            if sel == 1;
                set(ha,'verticalalignment','top');
            end
        end
        
        clear t
        for ii = 1:length(ib);
            t(ii) = (Boundary(ib(ii)) + Boundary(ib(ii)+1)) /2;
            t(ii) = Boundary(ib(ii)+1);
            s = max( gauss(t(ii),-1,var * varScale), gauss(t(ii),+1,var) );
            if plyes
                hax{kk}(end+1) = plot([t(ii) t(ii)],[0 s],'k-','linewidth',2,'color',red);
            end
        end
        Qs(sel,:) = t ;
        %set(gca,'xtick',t);
    end
    subplot(3,1,2);
    for ii = 1:K-1
        %ha = plot(Qs(:,ii), varlist,'k--','linewidth',2);
        ha = plot(Qs(:,ii), varlist,l{kk}{:});
        hax{kk}(end+1) = ha;
        hold on
        if ii == K-1
            %ha = addlabel(label{kk},labelpos(kk),Qs(:,ii) + [1:size(Qs,1)]'*eps, varlist,'x',2);
            ha = text(labelpos(kk,1),labelpos(kk,2),label{kk})
            set(ha,'fontsize',10);
            set(ha,'BackgroundColor',[1 1 1]*0.99)
            if kk == 1, set(ha,'color',red), end
            hax{kk}(end+1) = ha
        end
    end
end
grid on

%%set(gca,'xtick',[-2:0.5:2]);
set(gca,'xtick',Boundary)

Boundary = round(Boundary*1000)/1000;
for ii = 1:length(Boundary)
    if any(Boundary(ii) == [-1 +1])
        hax{3}(ii) = plot(ones(1,2) * Boundary(ii), ylim,'k:');
    else
        hax{3}(ii) = plot(ones(1,2) * Boundary(ii), ylim,'k:');
    end
    uistack(hax{3}(ii),'bottom');
end
set(gca,'xtick',[-1 0 1])
set(gca,'xticklabel',{'-1','0','+1'})



xlim([-2 2])
ylim([varlow varhigh])
ylabel('Noise Variance on +1, \sigma_{+1}^2','fontsize',FontSize)



subplot(3,1,1);
ylim([0 0.7]);
set(gca,'xtick',[]);
set(gca,'xcolor',[0.99 0.99 0.99]);
set(gca,'xaxislocation','top');
set(gca,'ycolor',[0.99 0.99 0.99]);
set(gca,'ytick',[]);
get(gca,'plotbox');
get(gca,'position')
set(gca,'box','off')

subplot(3,1,3);
ylim([0 1.4]);
set(gca,'xtick',[]);
set(gca,'xcolor',[0.99 0.99 0.99]);
set(gca,'ydir','reverse');
set(gca,'ytick',[]);
set(gca,'ycolor',[0.99 0.99 0.99]);
set(gca,'box','off')

figure_restore
orient tall

pdf(mfilename);
pdfcrop(mfilename);


return

if true
    for ii = 1:length(hax{3})
        delete(hax{3}(ii));
    end
    pdf quantizeBiawgn3-3
    
    for ii = 1:length(hax{1})
        delete(hax{1}(ii));
    end
    pdf quantizeBiawgn3-2
else
    for ii = 1:length(hax{1})
        delete(hax{1}(ii));
    end
    
    for ii = 1:length(hax{2})
        delete(hax{2}(ii));
    end
    pdf quantizeBiawgn3-1
end

%system('scp qB.pdf 110.67.104.141:~/Desktop')



