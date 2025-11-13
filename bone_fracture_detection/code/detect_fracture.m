function BW_final = detect_fracture(I)
% DETECT_FRACTURE - Improved, smooth and precise fracture detection
% by Champak Kumar Sinha

    % Step 1: Converting the input xray img to grayscale if needed
    if size(I,3)==3
        I = rgb2gray(I);
    end
    
    % Step 2: Noise reduction and enhancement
    I_filt = imgaussfilt(I, 1.2);       % Smooths the image slightly
    I_enh  = adapthisteq(I_filt);       % Enhances contrast adaptively

    % Step 3: Edge detection using canny
    edges = edge(I_enh, 'Canny', [0.2 0.4]);  % Tune thresholds for clarity
    
    % Step 4: Morphological methods
    se = strel('disk', 2);
    BW_close = imclose(edges, se);      % Close small gaps
    BW_fill  = imfill(BW_close, 'holes');
    BW_clean = bwareaopen(BW_fill, 200); % Remove tiny specks and noise

    % Step 5: Removing large areas
    CC = bwconncomp(BW_clean);
    stats = regionprops(CC, 'Area', 'BoundingBox', 'Eccentricity');
    
    % area and shape based filters
    mask = false(size(I));
    for k = 1:CC.NumObjects
        A = stats(k).Area;
        e = stats(k).Eccentricity;
        box = stats(k).BoundingBox;
        % Keep regions of reasonable size and irregular shape
        if A > 250 && A < 4000 && e > 0.3 && box(3) < 0.6*size(I,2)
            mask(CC.PixelIdxList{k}) = true;
        end
    end

    % Final cleaned fracture mask
    BW_final = mask;
end


