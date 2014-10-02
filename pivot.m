function Mp = pivot(M, row)

Mp = M;
[r c] = size(M);
col = row;

maxRow = row;
for i = row:r
    if abs(M(i, col)) > abs(M(maxRow, row))
        maxRow = i;
    end
end

Mp(row,:) = M(maxRow,:);
Mp(maxRow,:) = M(row,:);

end