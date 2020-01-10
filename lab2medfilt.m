function [image]=lab2medfilt(I,k)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end
I=double(I);

for i=k+1:1:r-k-1 %since it is a window filter
    for j=k+1:1:c-k-1
        subimg=I(i-k:i+k,j-k:j+k);
        sorted=sort(subimg(:));
        value=median(sorted);%take the median of sorted array
        I(i,j)=value;
    end
end
I=uint8(I);
image=I;

end