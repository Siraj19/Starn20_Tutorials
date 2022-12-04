function volume = Volfuel(height)
%After having appropiate mathematical model just write the equation
%Before putting a check make sure user gave valid values of height and
%volume cannot get negative in practice
%Height greater than 5 inches came from our mathematical modelling
if(height>=15)
    %Volume is returned in gallons
    volume = (225/231)*pi*(2*height-10);
elseif(0<=height)&&(height<15)
    %Volume is returned in gallons
    %Elliptical formula
    volume = (4/693)*pi*(225)*(height);
else
    fprintf("Please enter height greater than 0 inches to make sure you stay within practical bounds. \n")
    volume = 0
end