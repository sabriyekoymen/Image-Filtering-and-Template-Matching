%question 2.2
clear all
fig1 =  im2double(rgb2gray(imread('\Users\Sabriye\Desktop\s1.jpg')));
fig2 =  im2double(rgb2gray(imread('\Users\Sabriye\Desktop\s2.jpg')));
fig3 =  im2double(rgb2gray(imread('\Users\Sabriye\Desktop\s3.jpg')));



a=((fig1+fig2+fig3)/3); %average and size



 imshow(a); 


