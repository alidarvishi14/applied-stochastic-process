function [random]=my_random()
    X=[1,2,4,5,8,10];
    P=[0.3,0.1,0.2,0.1,0.2,0.1];
    F=cumsum(P);
    ran=rand(1);
    random = X(sum(F<=ran)+1);
