# Bone-Fracture-Detection-using-core-image-processing-tools-in-MATLAB
MATLAB project for detecting fractured bones by using simple image processing methods.
 Overview  
This project detects **bone fractures from X-ray images** using **image processing techniques** in MATLAB. It applies preprocessing, edge detection, and morphological operations to highlight possible fracture regions automatically.

---

## Roadmap(Methodology) that I have used here is very simple and it is as follows :-

The project follows a step-by-step image-processing pipeline:

Image Acquisition
I have loaded multiple X ray images into the MATLAB drive from datasets from online sources and some are real photographed sources also.Created a separate folder for this and named it DATA.

Preprocessing
Here I have used Contrast enhancement and grayscale conversion for better visibility .

Edge Detection
Here I have applied "Canny algorithm" to highlight fracture patterns as this is the most classical method in image processing.

Morphological Filtering
Remove noise and strengthen fracture edges.

Region Detection
Connected components and bounding  Red box marking.

Result Visualization
Fracture areas are marked using Red rectangular overlays.



## Future Needs 
- After learning and practicing **machine learning or CNN models** , I will include this domains in my project and improves its accuracy. As core processing techniques are limited to finite inputs, later with more than thousands of data and deep learning methods the project will get upgraded.  
- Will definitely Develop a **GUI** for clinical use.
## Directory
  Bone-Fracture-Detection/
│
├── data/               # X-ray input images
├── code/               # MATLAB scripts
│   ├── preprocess.m
│   ├── edge_detection.m
│   ├── run_one_img.m
│   ├── fracture_detect.m
│   └── main.m
│
├── results/            # Output images
└── README.md


---

**Author:** Champak Kumar Sinha  
**Institution:** Amity University Kolkata  
**Course:** B.Tech in ECE  
