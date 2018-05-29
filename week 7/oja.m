x=0.5*randn(500,1);		% Generate X scatter 
y=0.05*randn(500,1);		% Generate Y scatter 
input=[x';y'];				% Create input data matrix 
theta = 0; 
r=[cos(theta) -sin(theta) 
   sin(theta) cos(theta)]; 
inputnew=r*input; 
 
xshift=0; 
yshift=0; 
 
for i=1:500 
   inputnew(1,i)=inputnew(1,i)+xshift; 
   inputnew(2,i)=inputnew(2,i)+yshift; 
end 
 
figure 
hold on 
zoom on 
plot(inputnew(1,:),inputnew(2,:),'.k');	% Plot scatter 
axis equal 
grid on 
eta=0.15;					% Initialize learning rate 
w=[.1;.5];					% and the weights 
plot(0.1,0.5,'o');		% Mark the initial point 
text(0.08,0.6,'\downarrow \fontname{times} Initial weight (0.1,0.5)') 
 
for epoch=1:15				% We'll do 15 epochs 
   for i=1:500 
      s = inputnew(:,i)' * w;	% Compute activation 
      w = w + eta * s * (input(:,i) - s*w);	% Update weights 
      plot(w(1),w(2),'.','markersize',10);	% Plot weight point 
   end 
end 
 
plot(w(1),w(2),'o'); 
axis([-2 2 -0.5 1]); 
text(1,-0.15,'\uparrow \fontname{times} Final weight'); 
text(1,-0.3,'(1.0,-.004)'); 
 
xlabel('x'); 
ylabel('y'); 
title('\itLinear neuron simulation on 2d normal data using Ojas rule'); 