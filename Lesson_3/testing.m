clc
clear all

%Making height matrix so that we can compute volume on given values of height
height_vector = 0:0.01:70;
%Making blank volume vector where we would store volumes corresponding to
%height vector
volume_vector = zeros(1,length(height_vector));
%Running loop to compute for each value of height
for index = 1:1:length(height_vector)
    volume_vector(index) =  Volfuel(height_vector(index));
end
%Plotting height in inches vs volumen in gallon
plot(volume_vector, height_vector)
%Labelling on graph
xlabel("Height in inches")
ylabel("Volume in gallons")