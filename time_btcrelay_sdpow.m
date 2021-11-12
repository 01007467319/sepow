x = 0:25000:600000;
a = [];
b = [];
a(1) = 0;
a1 = btcrelay(2048);
y2 = [0,0.375,0.373,0.38,0.368,0.377,0.373,0.374,0.375,0.376,0.372,0.374,0.378,0.378,0.373,0.374,0.374,0.375,0.372,0.374,0.379,0.378,0.377,0.374,0.374];
 for i=2:1:25
     a(i) = (a1(i)*1024)/y2(i);
 end
b = round(a);
h1 = plot(x,b,'-*g'); 
set(gca,'ygrid','on','LineWidth',2);
set(gca,'xgrid','on','LineWidth',2);
set(h1,'LineStyle','-','LineWidth',2);
set(h1,'Marker','*','MarkerSize',4.5);
set(gca,'FontSize',15);
axis([0,600000,0,140000]) 
%set(gca,'XTick',[0:600000]) 
set(gca,'YTick',[0:20000:140000]) 
%legend('Neo4j','MongoDB');  
text(300000,62005-6000,{'\uparrow',['(' num2str(300000) ',' num2str(62005) ')' ]},'FontSize',10,'FontWeight','bold');
xlabel('Blockchain length (n)') 
ylabel('Multiples') 
