function out = check_malaria(img,th)
    %img = imread(img);
    grayimg = rgb2gray(img);
    %imshow(grayimg);title('Parasited Image');
    edgeimg = edge(grayimg,'sobel',0.05);
    %imshow(edgeimg);title('Edge dedection of image');
    sites_img = edge(grayimg,'sobel',0.05)-edge(grayimg,'sobel');
    %imshow(sites_img);
    sites_img = imdilate(sites_img,strel('disk',5));
    %imshow(sites_img);
    %[centers,radii] = imfindcircles(sites_img,[3, 40]);
    %viscircles(centers,radii,'EdgeColor','b');
    if sum(sites_img,'all')> th
        out =1;
    else
        out =0;
    end
end