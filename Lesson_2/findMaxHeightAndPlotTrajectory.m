
function maxHeight = findMaxHeightAndPlotTrajectory(velocity, angle, timeVector)
initialVelocityY = velocity*sin(angle);
initialVelocityX = velocity*cos(angle);
%Time is independent variable and we would differentiate or integerate with
%respect to it
syms time
%Now making an equation
velocityExpressionY = initialVelocityY - 9.8*time
velocityExpressionX = initialVelocityX + 0*(time^0)
%To get displacement equation we integerate velocity function with time
%int expression does integerate expression with respect to syms
displacementExpressionY = int(velocityExpressionY)
displacementExpressionX = initialVelocityX*time
%Now generating vectors or arrays from equation by pluging in values of
%time of interest vector to get corresponding values
vectorDisplacementX = vpa(subs(displacementExpressionX,time,timeVector))
vectorDisplacementY = vpa(subs(displacementExpressionY,time,timeVector))
%Now simply plotting those vectors
%plot(vpa(vectorDisplacementX),vpa(vectorDisplacementY))
%xlabel('Displacement in x direction')
%ylabel('Displacement in y direction')
%title('Trajectory View')

%To find max height covered we would take derivative of displacement with
%respect to time
%we know at peak height derivative gets zero
%Solve equation at derivative equal to zero would give solutions for
%possible maximas
displacementExpressionYDerivative = diff(vectorDisplacementY, time)
timeSolutionRoots = solve(displacementExpressionYDerivative,time)
%Now substituting in time solution roots in displacement equations to get max
%displacement in y direction
MaximasAndMinimas = vpa(subs(displacementExpressionY,time,timeSolutionRoots))
maxHeight = max(MaximasAndMinimas)
end