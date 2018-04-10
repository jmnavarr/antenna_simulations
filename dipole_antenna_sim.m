%3D radiation pattern of dipole antenna
% source: https://www.youtube.com/watch?v=zOQu7ZgRTb8
theta=[0:0.1:2*pi];
phi=[0:0.1:2*pi];
kl=1/2;
i0=1;
eta=120*pi;
urad=(eta*(i0^2)*((cos(kl*cos(theta-(pi/2))/2)-cos(kl/2))./sin(theta-(pi/2))).^2)/(8*(pi)^2);
udb=10*log10(urad);

%normalizing in order to make U vector positive
minu=min(udb);
u=udb-minu;

%expanding theta,phi,u to span entire space
u(1,1)=0;
for n=1:length(phi)
    theta(n,:)=theta(1,:);
end
phi=phi';
for m=1:length(phi)
    phi(:,m)=phi(:,1);
end
for k=1:length(u);
    u(k,:)=u(1,:);
end
[x,y,z]=sph2cart(phi,theta,u);
surf(x,y,z);
title('3D radiation pattern of dipole antenna');