%This is the main body of the code from where all the functions are called
%and the graph is produced.
x_coord = [24.74976*ones(4,1),41.78300*ones(4,1),58.86124*ones(4,1),75.84918*ones(4,1)];
y_coord = [75.84918*ones(1,4); 58.86124*ones(1,4);41.78300*ones(1,4);24.74976*ones(1,4)];
%X,Y coordinates for each of the antenna patches

x = [x_coord(1,1); x_coord(1,4); x_coord(4,1); x_coord(4,4)]; 
y = [y_coord(1,1); y_coord(1,4); y_coord(4,1); y_coord(4,4)];%coordinates on array where 
%bottom left is origin and measures are in mm
n = length(x); %number of antenna patches used to generate the plane
z = get_phases(n); %Gets phases from source of phase information

[xcoeff, ycoeff, const] = generate_plane_of_best_fit(x,y,z); %calculates
%coefficients of plane of best fit

z_points = xcoeff*x_coord+ycoeff*y_coord+const*ones(4,4); %Generates phases on the plane
