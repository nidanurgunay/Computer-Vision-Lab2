function [image1,image2]=sobelfilt(I)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end

flx=[-1,0,1;-2,0,2;-1,0,1];
fly=[-1,-2,-1;0,0,0;1,2,1];
I=double(I);
s=lab2gaussfilt(I);
s=double(s);

I1=conv2(s,flx,'same');
image1=uint8(I1);
I2=conv2(s,fly,'same');
image2=uint8(I2);

end