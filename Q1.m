d=2;
count =0;
Z = zeros(1,7);
sample=[10 20 50 100 200 500 1000];

for N=1:7
    count=0;
    x=rand(1,sample(N))*d/2;
    y=rand(1,sample(N))*d/2;
    for A=1:sample(N)
        if y(A)>x(A) 
            count=count+1;
        end
    end
    Z(N)=count/sample(N);
end

plot(sample, Z, 'b', sample, Z, 'go');
axis([1, 1000,0,1]);
xlabel('n');
title('');
ylabel('an');
Z
