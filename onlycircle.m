x=img;
figure();
% [centers,radii] = imfindcircles(x,[10 15],'ObjectPolarity','dark', ...
%           'Sensitivity',0.96,'Method','phasecode','EdgeThreshold',0.11);
imshow(img);
%radii=radii+3;
centers=centersNew;
radii=radiiNew;
k=1;
for i=1:length(centers)
    if(centers(i,2)<=640 && centers(i,1)<=470)
        
        if (img(uint32(centers(i,2)),uint32(centers(i,1)+radii(i)*0.4))>125)||(img(uint32(centers(i,2)+radii(i)*0.4),uint32(centers(i,1)))>125)
            centers(i,1)=0;
            centers(i,2)=0;
            radii(i,:)=0;
        end
    end          
end

centers( ~any(centers,2), : ) = [];
radii( ~any(radii,2), : ) = [];

h=viscircles(centers, radii);


      