function [image] =lab2gaussfilt(I)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end
I=double(I);
M=[1,4,7,4,1; 4,16,26,16,4;47,26,41,26,7;4,16,26,16,4;1,4,7,4,1];%kernel filter
M=M/273;
I=conv2(I,M,'same'); % convolution of gaussian filter
 
I=uint8(I);
image=I;


end