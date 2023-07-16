function H = CodeEdgeIndex(H)

[H.m H.n] = size(H.H);
H.Ne = sum(sum(H.H));
m = H.m;
n = H.n;

%speedup 0, make index matrices full.
for ii = 1:m
    H.row{ii} = full(H.row{ii});
end
for ii = 1:n
    H.col{ii} = full(H.col{ii});
end


%speedup 1: precompute each edge index.
d = length(H.row{1});
H.dc = d;
H.row_ex = cell(length(H.row),d);
for ii = 1:m
    ind = H.row{ii};
    d = length(ind);
    if d ~= H.dc; error('Constant weight code is required'); end
    for jj = 1:d
        H.row_ex{ii,jj} = ind([1:jj-1 jj+1:d]);
    end
end

d = length(H.col{1});
H.dv = d;
H.col_ex = cell(length(H.col),d);
for ii = 1:n
    ind = H.col{ii};
    d = length(ind);
    if d ~= H.dv; error('Constant weight code is required'); end
    for jj = 1:d
        H.col_ex{ii,jj} = ind([1:jj-1 jj+1:d]);
    end
end

