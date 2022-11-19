clc
clear all

%Problem1
x = [80 75 91 60 79 89 65 80 95 50 81];
%Using Nested functions technique
[avg std] = findAvgAndSTD_Nested(x)
%Using Subfuncrions
[avg std] = findAvgAndSTD_SubFunction(x)

%Problem2
MexicoPopulationAt1980 = 67;
MexicoPopulationAt1986 = 79;
TimeOne = 1980;
TimeTwo = 1986;
TimeDiff = TimeTwo-TimeOne;
TimeGapOfInterest = 2000-TimeOne;
MexicoPopulationAt2000 = findPredictionAtT(MexicoPopulationAt1980, MexicoPopulationAt1986, TimeDiff, TimeGapOfInterest)