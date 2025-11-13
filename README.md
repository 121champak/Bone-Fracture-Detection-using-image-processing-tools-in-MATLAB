# Bone-Fracture-Detection-using-image-processing-tools-in-MATLAB
MATLAB project for detecting fractured bones by using simple image processing methods.
 Overview  
This project detects **bone fractures from X-ray images** using **image processing techniques** in MATLAB. It applies preprocessing, edge detection, and morphological operations to highlight possible fracture regions automatically.

---

## ⚙️ Steps to Run  
1. Open MATLAB and set this folder as your **Current Directory**.  
2. Add X-ray images (PNG/JPG) inside the **data/** folder.  
3. Run the `main.m` script or execute:
   ```matlab
   I = imread('data/sample1.jpg');
   BW = detect_fracture(I);
   imshow(I); hold on;
   stats = regionprops(BW,'BoundingBox');
   for i = 1:numel(stats)
       rectangle('Position',stats(i).BoundingBox,'EdgeColor','r','LineWidth',2);
   end
   title('Detected Fracture Regions');
   ```
4. Red boxes will show possible fracture regions.

---

## 🧠 Tools Used  
- **MATLAB (R2023b or later)**  
- **Image Processing Toolbox**

---

## 📊 Output Example  
Detected fracture regions are highlighted using **red bounding boxes** on the X-ray image.

---

## 🚀 Future Scope  
- Improve accuracy using **machine learning or CNN models**.  
- Develop a **GUI** for clinical use.  

---

**Author:** Champak Kumar Sinha  
**Institution:** Amity University Kolkata  
**Course:** B.Tech in ECE  
