trainingData = objectDetectorTrainingData(gTruthp);
acfDetector = trainACFObjectDetector(trainingData,'NegativeSamplesFactor',2,'NumStages' , 12,'MaxWeakLearners',1500);