function [output1, output2] = function_name(input1, input2)

    function addtionResult = addition_funct(inp1,inp2)
        addtionResult = inp1+inp2;
    end
    function subtractionResult = subtraction_funct(inp1,inp2)
        subtractionResult = inp1-inp2;
        
endoutput1 = addition_funct(input1,input2)+addition_funct(input1,input2);
output2 = subtraction_funct(input1,input2);

end