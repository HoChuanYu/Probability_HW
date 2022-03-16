sample=[10 20 50 100 200 500 1000]
A=zeros(1,7);
M=zeros(1,7);
for n=1:7
    T=zeros(1,sample(n));
    k=1;
    count=0;
    sum=0;
    while T(sample(n))==0
      x=rand(1,1)*100;
      y=rand(1,1)*100;
      if y(1)<exp(-x(1))
          T(k)=y(1);
          k=k+1;
          z=rand(1,1)*1;
          if z(1)>x(1) 
             count=count+1;
          else
              if x(1)-2+z(1)>=0
                  sum = sum+1+floor((x(1)-z(1))/2)+1+floor((x(1)-2+z(1))/2);
              else 
                  sum = sum+1;
              end
          end
       end
    end
    A(n)=count/sample(n);
    M(n)=sum/sample(n);
end

figure(1);
plot(sample, A, 'b', sample, A, 'go');
axis([1, 1000,0,1]);
xlabel('n');
ylabel('bn');

figure(2);
plot(sample, M, 'b', sample, M, 'go');
axis([1, 1000,0,2]);
xlabel('n');
ylabel('cn');
title('E[x]');
A
M
