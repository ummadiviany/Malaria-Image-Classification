function [labels,preds]= predict_malaria(img_dir,label)
    th= 50;radius = 2;
    srcDir = img_dir;
    srcFiles = dir(fullfile(srcDir,'*.png'));
    total1 = numel(srcFiles);
    if label == 1
        labels = ones(total1,1);
    else
        labels = zeros(total1,1);
    end
    preds = zeros(total1,1);
    for k = 1:numel(srcFiles)
        filename = fullfile(srcDir,srcFiles(k).name);
        I = imread(filename);
        preds(k) = check_malaria(I,th,radius);
    end
end