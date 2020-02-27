
acfwithmorph;
looplarge ;  %large
Removeoverlap;
overlapping;
onlycircle;
centersNew=centers;
radiiNew=radii;
largecircles=length(centersNew)
masking ;  %large
img=Q;

loopsmall  ; %small
Removeoverlap;
overlapping;
onlycircle;
centersNew=centers;
radiiNew=radii;
smallcircles=length(centersNew)
masking;
img=Q;

loopmedium   %medium;
Removeoverlap;
overlapping;
onlycircle;
centersNew=centers;
radiiNew=radii;
mediumcircles=length(centersNew)
