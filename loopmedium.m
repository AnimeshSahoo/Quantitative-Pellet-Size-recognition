ncenters=zeros(0,2);
nradii=zeros(0,1);
xbound=zeros(0,1);
ybound=zeros(0,1);
imshow(img);
%img=Q;
%figure(),imshow(img)
for j=1: length(selectedBbox)
    im=imcrop(img,[selectedBbox(j,1),selectedBbox(j,2),selectedBbox(j,4),selectedBbox(j,3)]);
    x=im;
    %figure(),imshow(im)
    [centers,radii] = imfindcircles(x,[11 15],'ObjectPolarity','dark', ...
          'Sensitivity',0.97,'Method','phasecode','EdgeThreshold',0.04);  %for large change sensitivity to 0.96 and threshold to 0.08
                                                                          % for medium change sensitivity to 0.96 and threshold to 0.17
                                                                           %for small change sensitivity to 0.94 and threshold to 0.21
    ncenters=vertcat(ncenters,centers);
    nradii=vertcat(nradii,radii);
    
    
    %imshow(x);
    %h=viscircles(centers, radii);  
    
    %imshow(img);
    hold on 
    noofcircles=length(radii);
    
    for k=1:noofcircles
        xbound=vertcat(xbound,[selectedBbox(j,1)]);
        ybound=vertcat(ybound,[selectedBbox(j,2)]);
        x=centers(k);
        y=centers(k,2) ;   %Center of the circle
        r=radii(k)  ;    % Radius of the circle
        theta = 0 : (2 * pi / 10000) : (2 * pi);
        pline_x = r * cos(theta) + x + selectedBbox(j);   % hough transform
        pline_y = r * sin(theta) + y +selectedBbox(j,2);
        plot(pline_x, pline_y, '-');
    end
   
     
    hold off

end  

