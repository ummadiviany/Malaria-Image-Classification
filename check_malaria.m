function malaria = check_malaria(img,th,radius)
    grayimg = rgb2gray(img);
    sites_img = edge(grayimg,'sobel',0.05)-edge(grayimg,'sobel');
    sites_img = imdilate(sites_img,strel('disk',radius));
    region_stats = regionprops(sites_img,grayimg,"Area","BoundingBox");
    malaria = false;
    if ~isempty(region_stats)
        if sum(region_stats.Area) >= th
            malaria = true;
        end
    end
end