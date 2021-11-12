x = 0:25000:600000;
a = [];
b = [];
a(1) = 0;
a1 = powsidechain(50);
y2 = [0,0.375,0.373,0.38,0.368,0.377,0.373,0.374,0.375,0.376,0.372,0.374,0.378,0.378,0.373,0.374,0.374,0.375,0.372,0.374,0.379,0.378,0.377,0.374,0.374];
 for i=2:1:25
     a(i) = a1(i)/y2(i);
 end
 b = round(a);
 h1 = plot(x,b,'-*g'); 
 set(gca,'ygrid','on','LineWidth',2);
 set(gca,'xgrid','on','LineWidth',2);
set(h1,'LineStyle','-','LineWidth',2);
set(h1,'Marker','*','MarkerSize',4.5);
axis([0,600000,0,700])  
set(gca,'FontSize',15);
%set(gca,'XTick',[0:600000]) 
%set(gca,'YTick',[0:100:1000])
%legend('Neo4j','MongoDB');  
xlabel('Blockchain length (n)') 
ylabel('Multiples') 
