function visualize_result(I, BW, savepath)
% Display and save result with bounding boxes
    figure;
    imshow(I); title('Detected Fracture Regions');
    hold on;
    stats = regionprops(BW,'BoundingBox');
    for k = 1:length(stats)
        rectangle('Position', stats(k).BoundingBox, 'EdgeColor', 'r', 'LineWidth', 2);
    end
    hold off;
    exportgraphics(gca, savepath);
    close;
end
