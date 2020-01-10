function [image] = lab1locbox(I,k)
[r,c,ch]=size(I);


for i=k+1:1:r-k-1
    for j=k+1:1:c-k-1
        subimg=I(i-k:i+k,j-k:j+k);
        value=mean(subimg(:));
        I(i,j)=value;
    end
end

image=I;


end