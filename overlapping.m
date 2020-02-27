centersNew( ~any(centersNew,2), : ) = [];
radiiNew( ~any(radiiNew,2), : ) = [];
xboundNew( ~any(xboundNew,2), : ) = [];
yboundNew( ~any(yboundNew,2), : ) = [];
mask=false(0,1,1);
mask1=false(494,659);
mask2=false(494,659);
centersNew(:,[1])=[centersNew(:,[1])+xboundNew(:,[1])];
centersNew(:,[2])=[centersNew(:,[2])+yboundNew(:,[1])];
imshow(img);
h=viscircles(centersNew, radiiNew);

% for i=1:length(centersNew)
%     xc = centersNew(i,1);
%     yc = centersNew(i,2);
%     r = radiiNew(i);
%     m = 1:size(img,2);
%     n = 1:size(img,1);
%     [xx,yy] = meshgrid(m,n);
%     mask=logical(hypot(xx - xc, yy - yc)<=r);
%     mask1=mask1+mask;
%    % mask2=mask1+mask ; 
% end
% imshow(mask1)
% title('Mask image')
% %mask
% figure()
% mask2=logical(img)+mask1;
% Q=img;
% Q(logical(mask1))=255;
% imshow(Q)
