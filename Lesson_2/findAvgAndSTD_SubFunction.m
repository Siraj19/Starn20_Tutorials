%%%Using Sub-function Technique%%%

%Primary function name is same as the function file name
function [average StandardDeviation] = findAvgAndSTD_SubFunction(InputVector)
%Now what I am actually doing in my primary function
average = findAverage(InputVector);
StandardDeviation = findSTD(InputVector);
%Creating subfunctions
%Which means subfunctions cannot be called outside of the primary function
%files
%You can declare inside primary functions in any order

%Creating subfunction
%Note that sub function internal variable is not accessible outsider
%Here AvgResult is internal variable name in function definition 
    function AvgResult = findAverage(InputVector)
        AvgResult = sum(InputVector)/length(InputVector);
%Creating nested function above and using another cousin subfunction inside this
%sub function so that we do not have to code again for finding average
    function StdResult = findSTD(InputVector)
        StdResult = (sum((InputVector-findAverage(InputVector)).^2)/(length(InputVector)-1))^(1/2);
     