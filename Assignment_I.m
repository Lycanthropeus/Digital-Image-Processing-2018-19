%% TASK - I (Reading an image from MATLAB) 

a = imread('C:\Users\arun_nrao\Desktop\DIP\Images to Practice\Niranjan_Photo.jpg'); 

%% TASK - II (Displaying the image in black and white, 8 gray levels)

b = rgb2gray(a);

%% TASK - III (Displaying the image in different bit planes)

c = double(b);
[m, n] = size(c);


c0 = mod(c,2);
subplot(2,4,1);imshow(c0);
c1 = mod(floor(c/2),2);
subplot(2,4,2);imshow(c1);
c2 = mod(floor(c/4),2);
subplot(2,4,3);imshow(c2);
c3 = mod(floor(c/8),2);
subplot(2,4,4);imshow(c3);
c4 = mod(floor(c/16),2);
subplot(2,4,5);imshow(c4);
c5 = mod(floor(c/32),2);
subplot(2,4,6);imshow(c5);
c6 = mod(floor(c/64),2);
subplot(2,4,7);imshow(c6);
c7 = mod(floor(c/128),2);
subplot(2,4,8);imshow(c7);

%% TASK - IV (Scaling an image)

a_scale = imresize(a,3);
imshow(a_scale);  

%% TASK - V (Rotating an image)

theta = 45;
tform = affine2d([cosd(theta) sind(theta) 0;-sind(theta) cosd(theta) 0; 0 0 1]);
b_rotate = imwarp(b,tform);
imshow(b_rotate);

%% TASK - VI (Translating an image)

a_translate = imtranslate(a,[300 25]);
imshow(a_translate);
