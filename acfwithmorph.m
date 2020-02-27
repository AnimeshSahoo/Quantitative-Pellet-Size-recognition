img= imread('pellet7.jpeg');
% se=strel('disk',5);
% Iopen=imopen(I,se);
% imshowpair(Iopen,I,'montage')
% img=Iopen;
[bboxes,scores] = detect(acfDetector,img,'Threshold',-1,'WindowStride',4 ,'MinSize',[12 12],'MaxSize',[100,100]);
[selectedBbox,selectedScore] = selectStrongestBbox(bboxes,scores,'OverlapThreshold',0.2,'RatioType','Min');
I2 = insertObjectAnnotation(img,'rectangle',selectedBbox,...
        cellstr(num2str(selectedScore)),'Color','y');

[bboxes1,scores1] = detect(acfDetector,I,'Threshold',-1,'WindowStride',4,'MinSize',[12 12],'MaxSize',[100,100] );
[selectedBbox1,selectedScore1] = selectStrongestBbox(bboxes1,scores1,'OverlapThreshold',0.2,'RatioType','Min');    
I3 = insertObjectAnnotation(I,'rectangle',selectedBbox1,...
        cellstr(num2str(selectedScore1)),'Color','y');    
figure, imshowpair(I2,I3,'montage');   




 

