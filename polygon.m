function polygon(num_sides)
    % Check for valid inputs
    if num_sides < 3 || ~isnumeric(num_sides) 
        error('Invalid input arguments. Please provide a valid number of sides');
    end
    
    % Calculate the angles for each vertex
    angles = linspace(0, 2*pi, num_sides+1);
    
    % Calculate the coordinates of the vertices
    x = cos(angles);
    y = sin(angles);
    
    % Plot the polygon
    figure;
    plot(x, y, 'bo-'); % 'bo-' specifies blue circles connected by lines
    axis equal; % Equal aspect ratio
    title(['Polygon with ', num2str(num_sides), ' sides']);
    xlabel('X-axis');
    ylabel('Y-axis');
    grid on;
end
