Ij=imread('jump.png');
Ih=imread('house.png');
Im=imread('mother.png');
It=imread('Tiger.png');
 %%%%TASK1
figure
subplot(1,2,1)
imshow(Ij);
title('Original image');
subplot(1,2,2)
I=lab2gaussfilt(Ij);
imshow(I);
title('Gaussian filtered image');
%%%%%TASK2
figure
subplot(1,3,1);
imshow(It);
title('Original image');
subplot(1,3,2)
I1=lab2gaussfilt(It);
imshow(I1);
title('Gaussian filtered image');
subplot(1,3,3);
I2=lab2medfilt(It,2);
imshow(I2);
title('Median filtered image');

%%%TASK3
figure
subplot(1,2,1);
imshow(Im);
title('original image');
subplot(1,2,2);
I3=lab2sharpen(Im,10,3);
imshow(I3);
title('Sharpened image');

%%%TASK4
[I4,I5]=sobelfilt(Ih);
figure
subplot(2,2,1);
imshow(Ih);
title('Original image');
subplot(2,2,3);
imshow(I4);
title('Sobel Horizontal Filtered Image');
subplot(2,2,4);
imshow(I5);
title('Sobel Vertical Filtered Image');


    