[centersNew,radiiNew,xboundNew,yboundNew]=RemoveOverLap(ncenters,nradii,xbound,ybound,3,2);
function [centersNew,radiiNew,xboundNew,yboundNew]=RemoveOverLap(ncenters,nradii,xbound,ybound,tol,option)
% This function deals with overlaping circles by:
% option 1: removes one circle of the two (if it does not matter which one).
% option 2: removes the smaller circle of the two
% option 3: kills both all overlaping circles
% centers - (x,y) circles centers.
% radii - the circles radius
% tol - tolerance for an overlap, im number of pixels.
% option - 1,2 or 3, see above.
centers=ncenters;
radii=nradii;
l=length(centers)

for i= 1: l
    s=i+1;
    for j=s:l
        d_ij=sqrt((centers(i,1)+xbound(i,1)-(centers(j,1)+xbound(j,1))).^2+(centers(i,2)+ybound(i,1)-(centers(j,2)+ybound(j,1))).^2);
        k=radii(i)+radii(j)-tol;
        if d_ij < k && radii(j)>0
            %option 1
            if option == 1
             centers(i,1)=0;
             centers(i,2)=0;
             radii(i)=0;
             xbound(i,1)=0;
             ybound(i,1)=0;
            end
            %option 2 
            if option == 2
                 if radii(i)>radii(j)
                     centers(j,1)=0;
                     centers(j,2)=0;
                     radii(j)=0;
                     xbound(j,1)=0;
                     ybound(j,1)=0;
                 else
                    centers(i,1)=0;
                    centers(i,2)=0;
                    radii(i)=0;
                    xbound(i,1)=0;
                    ybound(i,1)=0;
                 end
            end
            %option 3
            if option ==3
                     centers(j,1)=0;
                     centers(j,2)=0;
                     radii(j)=0;
                     xbound(j,1)=0;
                     ybound(j,1)=0;
                     
                     centers(i,1)=0;
                     centers(i,2)=0;
                     radii(i)=0;
                     xbound(i,1)=0;
                     ybound(i,1)=0;
            end
        end
   end
end
centersNew=centers;
radiiNew=radii;
xboundNew=xbound;
yboundNew=ybound;
end

