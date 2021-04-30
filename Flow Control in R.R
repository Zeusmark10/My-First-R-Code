
###------------Flow Control in R --------------------###

# 1. If/Else

x <- 30L
if(is.integer(x)){
  print("x is an integer")
}else{
  print("x is not an integer")
}

# 2. While Loop
v <- c('Hello World')
count <- 2

while(count < 7){
  print(paste("Count is",count))
  count = count + 1
}

# 3. For Loop

names <- c("vj","aj","dj","sj")
names

for(i in names){
  print(i)
}


df <- mtcars
df
df[df['mpg']>30,] #Notice  the use of  indexing with a coma
subset(df,mpg>30)

df[(df['mpg'] >= 20 )&(df['hp'] > 100),]

#-------------------------------------------------------
#---------------------------------------------------

#Single condition check
hot<-F
temp <- readline(prompt="Enter temp: ")
temp <- as.integer(temp)

if(temp > 60){
  hot <- T
}
hot

# Else
score <- readline(prompt = "Enter marks: ")
if(score < 40){
  print("Fail")
}else{
  print("Pass")
}

#Else if
if(score < 40){
  print("Fail")
}else if(score >40 & score< 60){
  "Decent"
}else{
  print("Great")
}


#While Example

help(cat)

x <- 0

while(x < 10){
  
  cat("x is currently: ",x )
  print(' x is still less than 10, adding 1 to x ')
  
  x = x+1
  if(x==10){
    print("x = 10,terminating loop")
  }
}

# --------- Using break statement in a while loop ------#

x <- 0

while(x < 5){
  
  cat("x is currently: ",x )
  print(' x is still less than 10, adding 1 to x ')
  
  x = x+1
  if(x==5){
    print("x is equal to 5!")
    break
    print("x = 10,terminating loop")
  }
}

#------------For Loop ------------------#
vec <- c(6,7,8,9,10)
for(i in 1:length(vec)){
  print(i)                    #This will print the index position of the elements
}

vec <- c(6,7,8,9,10)
for(i in 1:length(vec)){
  print(vec[[i]])                    #This will print the  elements
}

vec <- c(6,7,8,9,10)
for(i in vec){
  print(i)                    #This will print the elements
}

#----------------For loop to print a matrix------------------#

mat <- matrix(1:25,nrow=5)
mat

for (i in mat){
  print(i)
}


#Example to  print the sq and sqrt  of nos b/w 1-25

for (i in 1:25){
  sq <- i*i
  sqroot <- sqrt(i)
  #message("i=",i,"sq=",sq,"sqroot=",sqroot)
  cat("i=",i,"sq=",sq,"sqroot=",sqroot)
  print("")
}





