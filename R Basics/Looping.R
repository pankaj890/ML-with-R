#If-Else and Looping

#Simple If-Else
age = 20
if (age > 18){
  print('Major')
} else {
  print('Minor')
}

#ifelse() funtion
ifelse(age>18,'Major','Minor')


#Switch Statement
age <- 'Minor'
switch(age,
       Major={
         print('Age greater than 18')
         },
       Minor={
         print('age less than 18')
         })


#Nested If-Else
x <- 14
if (x<10){
  print('Less than 10')
  }else if (x==10){
    print('Ten')
  }else {
    print('Greater than 10')
  }


#WHILE Loop
i <- 1
while(i<6){
  print(i)
  i=i+1
}


#FOR Loop
vec <- 1:10
for (val in vec){
  print(val)
}


#REPEAT Loop
x = 0
repeat{
  x=x+1
  if (x<8){
    print(x)
  } else if (x==8){
    next
  } else if (x==15){
    break
  } else {
      print(x)
    }
}
