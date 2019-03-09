nx=720; 
nt=nx/2; % должно делиться на 2
 
z = zeros(nt,nx); 
C = z; 
c = zeros(1,nx);

c(nx/2) = 1; 
C(1,:) = c;
 
imh = image(cat(3,z,C,C)); 
set(imh, 'erasemode', 'none') 
axis('equal','tight','off')

x = 2:nx-1;

for t=2:nt
    C(t,x) = (c(x-1)==1 & c(x)==1 & c(x+1)==0) | ...
             (c(x-1)==1 & c(x)==0 & c(x+1)==0) | ...
             (c(x-1)==0 & c(x)==1 & c(x+1)==1) | ...
             (c(x-1)==0 & c(x)==0 & c(x+1)==1); % sierpinsky   
    set(imh, 'cdata', cat(3,z,C,C) ) 
    drawnow 
    c = C(t,:);
end 
