%question 2.1

%Read an Image A(Template)
Template = imread('\Users\Sabriye\Desktop\a9.jpg');

%Read the Target Image
Target = imread('\Users\Sabriye\Desktop\a3.png');

A = Template(:,:,1);
B = Target(:,:,1);

corr_map = zeros([size(A,1),size(A,2)]);

for i = 1:size(A,1)-size(B,1)
    for j = 1:size(A,2)-size(B,2)
        %Construct the correlation map
        corr_map(i,j) = correl(A(i:i+size(B,1)-1,j:j+size(B,2)-1),B);
    end
end

figure,imagesc(corr_map);colorbar;
%Find the maximum value
maxpt = max(corr_map(:));
[x,y]=find(corr_map==maxpt);

%Display the image from the template
figure,imagesc(Target);
title('Target Image');
colormap(gray);
axis image

grayA = rgb2gray(Template);
Result   = A;
Result(:,:,1)=grayA;
Result(:,:,2)=grayA;
Result(:,:,3)=grayA;

Result(x:x+size(B,1)-1,y:y+size(B,2)-1,:)=Template(x:x+size(B,1)-1,y:y+size(B,2)-1,:);

figure,imagesc(Result); title('Result');