function imout = drawBoundary(imGray,roi)
border = bwperim(roi);
SE = strel('disk',2);
border = imdilate(border,SE);
R = imGray(:,:,1);
R(border) = 255;
G = imGray(:,:,2);
G(border) = 0;
B = imGray(:,:,3);
B(border) = 0;
imout = cat(3, R, G, B);