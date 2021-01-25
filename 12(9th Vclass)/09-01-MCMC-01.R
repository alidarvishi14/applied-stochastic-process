T = 22
list = c(1:4)
n = length(list)
while (TRUE){
  for (j in 1:(n-1)){
    temp = list[j]
    k=j+floor((n-j)*runif(1))+1;
    list[j]=list[k]
    list[k]=temp
  }
  if(sum((1:n)*list) >= T){
    break
  }
}
list
sum((1:n)*list)