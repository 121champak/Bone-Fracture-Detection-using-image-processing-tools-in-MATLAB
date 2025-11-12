% Run detection for one image
clear; clc;

% Choose image file
[filename, filepath] = uigetfile({'*.png;*.jpg'}, 'Select an X-ray image');
if isequal(filename,0)
    disp('No file selected.');
    return;
end
I = imread(fullfile(filepath, filename));

% Step 1: Preprocess
I_prep = preprocess(I);

% Step 2: Detect fracture
BW = detect_fracture(I_prep);

% Step 3: Visualize and save result
outputPath = fullfile('..','results','example_outputs',['Detected_' filename]);
visualize_result(I, BW, outputPath);

fprintf('✅ Fracture detection completed for %s\nSaved: %s\n', filename, outputPath);
