%**************************************************************************
% COURSE:   Sci Computing in Matlab
% NAME:     Calvin Ulsh
% GROUP:	Seth, Sean, Calvin
% PROJECT:  Our Time Progression Model of the Nile River
%**************************************************************************

% Interpolate points into sparsities in data set
clear all
close all

maxDist = 0.1; % max allowed distance between points

dataIn = load('nile.txt',','); % initial river coordinates
newData = [-100,-100]; % this will catch the new data
dataOut = dataIn; % this will contain the new data interpolated into the old

%{
% one LINEAR interpolation cycle
iter = 1;
while iter ~= length(dataOut) % distance between point and next point, no point after last point
    % test distance
    distance = sqrt( (dataOut(iter,1)-dataOut(iter+1,1))^2 + (dataOut(iter,2)-dataOut(iter+1,2))^2 );
    disp(distance);
    if distance > maxDist
        % interpolate new point
        firstPart = dataOut(1:iter,:);
        newPoint = newPointOnLine(dataOut(iter,:),dataOut(iter+1,:)); % new point is midpoint of the adjacent points
        secondPart = dataOut(iter+1:length(dataOut),:);
        % insert data
        dataOut = [firstPart;newPoint;secondPart];
        % isolated list of new (caught) points
        newData = [newData;newPoint];
        % every time a point is added we step back in order to make sure
        % the new point and last point are within maxDist of eachother
        iter = iter - 1;
    end
    iter = iter + 1;
end
newData = newData(2:length(newData),:); % get rid of artificial [-100,-100] point
%}


% one CIRCULAR interpolation cycle
iter = 1;
while iter < length(dataOut) % distance between point and next point, no point after last point
    % test distance
    distance = sqrt( (dataOut(iter,1)-dataOut(iter+1,1))^2 + (dataOut(iter,2)-dataOut(iter+1,2))^2 );
    disp(distance);
    if distance > maxDist
        % interpolate new point
        firstPart = dataOut(1:iter,:);
        
        % get pts before and after current pt
        if iter == 1 % use first 3 points
            ax = dataOut(iter,1);
            ay = dataOut(iter,2);
            bx = dataOut(iter+1,1);
            by = dataOut(iter+1,2);
            cx = dataOut(iter+2,1);
            cy = dataOut(iter+2,2);
        elseif iter == length(dataOut) % use last 3 points
            ax = dataOut(iter-2,1);
            ay = dataOut(iter-2,2);
            bx = dataOut(iter-1,1);
            by = dataOut(iter-1,2);
            cx = dataOut(iter,1);
            cy = dataOut(iter,2);
        else % for all non-endpoints in array, use current point and prev and next
            ax = dataOut(iter-1,1);
            ay = dataOut(iter-1,2);
            bx = dataOut(iter,1);
            by = dataOut(iter,2);
            cx = dataOut(iter+1,1);
            cy = dataOut(iter+1,2);
        end
        % find center of circle
        % first make sure we don't divide by zero
        if abs((ax-cx)*(ay-by)-(ax-bx)*(ay-cy)) <= 10^-5 || abs((ay-cy)*(ax-bx)-(ay-by)*(ax-cx)) <= 10^-5
            disp('ERROR: Divide by zero, points are colinear!');
        else
            % find center
            centerX = ((ax^2+ay^2-cx^2-cy^2)*(ay-by)-(ax^2+ay^2-bx^2-by^2)*(ay-cy))/(2*((ax-cx)*(ay-by)-(ax-bx)*(ay-cy)));
            centerY = ((ax^2+ay^2-cx^2-cy^2)*(ax-bx)-(ax^2+ay^2-bx^2-by^2)*(ax-cx))/(2*((ay-cy)*(ax-bx)-(ay-by)*(ax-cx)));
            center = [centerX,centerY];
            % find radius of circle
            radius = sqrt((centerX-ax)^2+(centerY-ay)^2);
            
            newPoint = newPointOnCircle(dataOut(iter,:), dataOut(iter+1,:), center, radius);
        
            secondPart = dataOut(iter+1:length(dataOut),:);
            % insert data
            dataOut = [firstPart;newPoint;secondPart];
            % isolated list of new (caught) points
            newData = [newData;newPoint];
            % every time a point is added we step back in order to make sure
            % the new point and last point are within maxDist of eachother
            iter = iter - 1;
        end
    end
    iter = iter + 1;
end
newData = newData(2:length(newData),:); % get rid of artificial [-100,-100] point


% Plot old and new data
figure(1)
hold on
scatter(dataIn(:,1),dataIn(:,2),'b');
scatter(newData(:,1),newData(:,2),'r');
legend('old data','new data');
hold off

% write interpolated data
fileID = fopen('interpolated.txt','w');
fprintf(fileID,'%12f,%12f\n',dataOut'); % I prime-ed the dataOut matrix cause it works
fclose(fileID);

function [newPt] = newPointOnCircle(pt1, pt2, center, radius)
    midpt = newPointOnLine(pt1,pt2);
    outwardNorm = (midpt-center)/norm(midpt-center);
    newPt = outwardNorm * radius + center;
end

function [newPt] = newPointOnLine(pt1, pt2)
    newPt = [(pt1(1)+pt2(1))/2,(pt1(2)+pt2(2))/2];
end