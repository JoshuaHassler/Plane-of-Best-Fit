function [xcoeff,ycoeff,const] = generate_plane_of_best_fit(x,y,z)
%The purpose of this functions is to generate a plane of best fit given a
%set of data. The inputs for the function are the arrays of x, y, and z
%coordinates of the data set. The outputs for the function are the X
%coefficient, the y coefficient, and the constant term

n = length(x); %determines the number of data points that exist

A = [x y ones(n,1)]; %Generates a matrix of the data with a constant z term

A_pseudo = (A'*A)\A';%Determines the pseudo inverse for the over defined system

Coeff_matrix = A_pseudo*z; %Linear Algebra to calculate coeffecients and constant

xcoeff = Coeff_matrix(1); %x coefficient

ycoeff = Coeff_matrix(2); %y coefficient

const = Coeff_matrix(3); %constant term

end