function [image]=lab2sharpen(I,l,M)
[r,c,ch]=size(I);
if ch==3
    I=rgb2gray(I);
end
I=double(I);
if(M==1)
    s=lab1locbox(I,3);
    s=double(s);
end
if(M==2)
    s=lab2gaussfilt(I);
    [r1,c1]=size(s);
    s=[3,r1-2;3,c1-2];
      s=double(s);
end
if(M==3)
    s=lab2medfilt(I,2);
      s=double(s);
end

I=I+l.*(I-s);

I=uint8(I);
image=I;


end