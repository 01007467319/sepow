function y=zkRelay(lambda)
y=[];
y(1)=0;
%lambda = x;
%n = 150000;  %the length of a blockchain; 
c = 0.5;
B = 80; %the size of a block header;
H = 32;       % the size of a hash;
L = 100;  %L successive block;
   for i=1:1:24%20000:600000
   n = 25000 * (i);
   % compute equation: log2(2)/log2(1/c)*lambda*((log2(n)+1)*B+log2(n)*(log2(log2(n)))*H)
   %y(i+1) = ((L + lambda * log2(n)) * B + log2(n) * H)/1024;
   y(i+1) = (10/63 * n) / 1024;
   %i++
   end
end
