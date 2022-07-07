func = function(x){
  if (x>=0) {
    return(x)
  }
  else {
    return(-x)
  }
}
func(-1)

func1 = function(x){
  if (x==0){
    print('zero')
  }
  else if (x>0){
    print('positive')
  }
  else {
    print('negative')
  }
}
func1(-1)

#for loop
vector<- (1:3)
for (i in vector) {print(i)
  
}
typeof(vector)

#while loop
i = 1
while(i<=5){
  print(i)
  i =i+1
}
#condition-based
x = c(1,2,3,4,5,6)
x[x%% 2==1]
x%% 2==1
x = 1:9
array1 = array(x, c(3,3))
array1
#data.frame, data.table
employee_df = data.frame(name=c("A", "B","C"), department = c("Mathematics","Engineering","Sales"))
employee_df
x = array(rnorm(12), c(3,4))
x
random_df = as.data.frame(x)
random_df
data.matrix(random_df)
