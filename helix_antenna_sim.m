% helix antenna sim
% source: http://amzn.to/2Amqm7j
% source: https://www.youtube.com/watch?v=uGXiybt9jbU

hx = helix
show(hx)
hx = helix('Radius', 28e-3, 'Width', 1.2e-3, 'Turns', 4)
figure
show(hx)
figure
pattern(hx, 1.8e9)
figure
patternAzimuth(hx, 1.8e9)
figure
patternElevation(hx, 1.8e9)
S = sparameters(hx, 1.7e9 : 1e6 : 2.2e9, 72)
rfplot(S)
returnLoss(hx, 1.7e9 : 1e6 : 2.2e9, 72)
vswr(hx, 1.7e9 : 1e6 : 2.2e9, 72)