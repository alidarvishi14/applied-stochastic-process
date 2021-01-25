function list=shuffeled_list(n)
    list=linspace(1,n,n);
    for i=1:n
        j=i+ceil((n-i)*rand(1));
        temp=list(i);
        list(i)=list(j);
        list(j)=temp;
    end