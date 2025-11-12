function BW_final = detect_fracture(I)
% Detect possible fracture regions using edges and morphology
    edges = edge(I,'Canny'); % Edge detection
    BW_clean = imclose(edges,strel('disk',2)); % Close small gaps
    BW_clean = imfill(BW_clean,'holes'); % Fill interior holes
    BW_final = bwareaopen(BW_clean,50); % Remove small noise
end
