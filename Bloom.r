size <- 8

bloom <- rep(0,size)

hash1 <- function(x){
  return (x%%size)
}
hash2 <- function(x){
  return ((2*x+1)%%size)
}
hash3 <- function(x){
  return ((3*x+2)%%size)
}

insert <- function(x){
  bloom[hash1(x)]<<-1
  bloom[hash2(x)]<<-1
  bloom[hash3(x)]<<-1
}
check <- function(x){
  if(bloom[hash1(x)]==1 && bloom[hash2(x)]==1 && bloom[hash3(x)]==1){
    return("May be present in the array")
  } else{
    return ("Is not present in the array")
  }
}

numbers<-c(12,25,30,5)

for(num in numbers){
  insert(num)
}
snos<-c(55,6)

for(num in snos){
  cat(num, "->",check(num), "\n")
}