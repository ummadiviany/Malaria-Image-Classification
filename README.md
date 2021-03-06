# **Malaria-Image-Classification**
### The below method is successfull in classifying Malarial/Normal samples with with **~92% accuracy**.
For  MATLAB Central File Exchange please visit [![View Malaria-Image-Classification on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://in.mathworks.com/matlabcentral/fileexchange/102304-malaria-image-classification)

For GitHub Repo please visit [:octocat: GitHub](https://github.com/ummadiviany/Malaria-Image-Classification)



## **Visualize dataset**
1. Dataset can be downloaded from [Malarial Cell Images Dataset](https://www.kaggle.com/iarunava/cell-images-for-detecting-malaria).

2. Dataset consisits of 13780 parasited and 13780 non-infected images. A total of 27560 images are available in the dataset.

Some examples of the dataset are shown below.
|Image class|Image 1|Image 2|Image 3|Image 4|Image 5|
|-----------|-------|-------|-------|-------|-------|
**Parasite Image**|![](test_images/infected/C33P1thinF_IMG_20150619_114756a_cell_179.png)|![](test_images/infected/C33P1thinF_IMG_20150619_114756a_cell_180.png)|![](test_images/infected/C33P1thinF_IMG_20150619_114756a_cell_181.png)|![](test_images/infected/C33P1thinF_IMG_20150619_114756a_cell_182.png)|![](test_images/infected/C33P1thinF_IMG_20150619_115740a_cell_162.png)
**Non Infected Image**|![](test_images/NotInfected/C1_thinF_IMG_20150604_104722_cell_9.png)|![](test_images/NotInfected/C1_thinF_IMG_20150604_104722_cell_60.png)|![](test_images/NotInfected/C1_thinF_IMG_20150604_104722_cell_15.png)|![](test_images/NotInfected/C1_thinF_IMG_20150604_104722_cell_66.png)|![](test_images/NotInfected/C1_thinF_IMG_20150604_104722_cell_73.png)

3. Purple regions can be easily observed in the parasite images which are not available in Non-Infected images.

## **Classification task**
Now the task is to classify the given input image into **Malaria** *or* **Normal** class.

## **Methods**

### **Gradient-based edge dectection and morphological operations for Malaria image classification**

|Steps  |           Description                                 |                   Result                   |
|:-----:|-----------------------------------------------------|:------------------------------------------:|
1 | Convert RGB to Gray Image|![](method1_steps/gray.png)
2 | bw = Edge detection using *sobel* filter |![](method1_steps/edge.png)
3 | bw005 = Edge detection using *sobel* filter with thresold = 0.05|![](method1_steps/edge005.png)
4 | Subtract bw from bw005|![](method1_steps/parasite.png)
4 | Dilate the bw005-bw image with structuring element of disk with radius=5|![](method1_steps/dilated.png)
5 | If the area of the dilated image is more than the threshold then, image is classified as malarial infected sample. Thresold = 100 | Area  = 937, So classified as **Malaria** ![](method1_steps/box.png).

## **Results**
Below are results are obtained by performing classification on 13780 **Malaria** adn 13780 **Normal** class images.

| Metric | Accuracy |Sensitivity|Specificity|Precision|Recall|F1-Score|
|:------:|:--------:|:---------:|:---------:|:-------:|:----:|:------:|
**Metric Value**|**91.97**| 0.929|0.910|0.912| 0.929|0.920

<img src=confusion_mat.png width="500" height="500">

<!-- |                      |Predictd Class = Parasite|Predictd Class = Non-Infected| Total |
:---------------------:|:-----------------------:|:----------------------------:|:----:|
**Actual class = Parasite**| 13097| 682 | 13779
**Actual class = Non-Infected**| 1840| 11939 | 13779
**Total** |14937 | 12621 | 27558 -->

## **Prediction Results**
### **Testing on Normal-class images**
![](pred_normal.png)
### **Testing on Malaria-class images**
![](pred_malaria.png)

## **Conclusions**
The proposed method solves the malaria image classification problem with good accuracy. A lot of other advanced methods like use of Classifiers on top extracted feature using feature extraction and more advanced deep learning algorithms like Deep CNNs. But there is a trade-off between computaional effiecieny, time required to train & inferece. The proposed method solves the problem with least possible resources and time constraints with comparable accuracy to more sophisticated methods. 






