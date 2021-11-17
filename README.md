# **Malaria-Image-Classification**
For more detailed instructions please visit [![View Malaria-Image-Classification on File Exchange](https://www.mathworks.com/matlabcentral/images/matlab-file-exchange.svg)](https://in.mathworks.com/matlabcentral/fileexchange/102114-malaria-image-classification)

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
Now the task is to classify the given input image into **prasatie** *or* **non-infected** class.

## **Methods**

### **1. Gradient-based edge dectection and morphological operations for Malaria image classification**


## **Results**
|                      |Predictd Class = Parasite|Predictd Class = Non-Infected| Total |
:---------------------:|:-----------------------:|:----------------------------:|:----:|
**Actual class = Parasite**| 13097| 682 | 13779
**Actual class = Non-Infected**| 1840| 11939 | 13779
**Total** |14937 | 12621 



