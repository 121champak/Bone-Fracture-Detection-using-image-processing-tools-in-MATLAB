function Iout = preprocess(I)
% Preprocess X-ray image: grayscale, enhance, denoise
    if size(I,3)==3
        I = rgb2gray(I); % Convert to grayscale
    end
    I = adapthisteq(I,'ClipLimit',0.02,'Distribution','rayleigh'); % Enhance contrast
    Iout = medfilt2(I,[3 3]); % Remove noise
end
