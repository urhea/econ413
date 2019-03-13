#ECON413 Second Class

#If the first digit of the packages changes, it is likely that some functions 
#have changed.

#library(somepackages) will give you error, once there is error, it will stop
#functioning. 

#If require(somepackages), it will give a warning and keep loading the package.

sum(4,4)

1 / 0 #gives you inifinite
0/0 #gives you NaN, not a number
NA #means not availables

a <- c(1,2,3) 
mean(a) 
#outcome is 2

a <- c(1,2,3, 1/0)
mean(a) 
#oucome is Inf. #infinite

a <- c(1,2,3, 0/0)
mean(a)
#outcome is NaN

a = c(1,2,3, NA)
mean(a)
#outcome is NA
#if mean(a, na.rm = TRUE),
#the outcome is 2.

#Examples

x <- c(0:10, 50)
xm <- mean(x)
c(xm, mean(x, trim = 0.10))
#trim leaves out the lowest and the highest 10%.

#Default S3 method, so it will defaulty use the fnc this way.
mean(x, trim = 0, na.rm = FALSE, ...)
#trim will remove the outliers.
mean(x, 0, TRUE) #is the same.
mean(x, na.rm = TRUE, trim = .1)


mean(a, na.rm= KEY, trim = 0.10)
#Error in mean.default(a, na.rm = KEY, trim = 0.1) : 
#object 'KEY' not found

mean(a, na.rm= "KEY", trim = 0.10)
#Error in if (na.rm) x <- x[!is.na(x)] : 
#argument is not interpretable as logical

####################################################

a = c(1:3)

set.seed(123)
#random number generation
a <- rnorm(100)
#normal distribution 1:100 numbers
b <- a + rnorm(100)
lm(a ~ b)
model_1 <- lm(a~ b)
model_1


str(model_1)
summary(model_1)

model_1$coefficients
#to find coefficients
s
katsayi <- model_1$coefficients

katsayi["b"]*10

mean(model_1$residuals)
summary(model_1)

plot(model_1)


a <- 5
mode(5)
b <- "5"
mode(b)

d <- as.numeric(b)
mode(d)

#########


#logical values
e <- c(TRUE, FALSE, FALSE)
mode(e)

5 + e
#it adds logical vector to numeric (1, 0 , 0

f <- c("A", "B")
mode(f)
g <- c("A", "B", 1, 2)
mode(g)
g
#all elements should be in the same mode in a vector
#it converts eveything to general one, numeric becomes charachter. 
#if you write g to the console
#the outcome is #[1] "A" "B" "1" "2"

h <- c(T, F, 1, 2)
mode(h)
h
#outcome is numeric.

#logical elements will be numeric, numeric elements will be charachter.
k <- c(T, 5, "a")
mode(k)
k

#each class has certain values. dimension is an attribute of matrix
#matrix charahceterics, like dimension size.
#when we use functions, they look firt the class of objects such as
#regression, matrix, array etc. 

A <- c(1:5)
mode(A)
class(A)

#list is the most common type of data
#elements of a list can be a vector
#there is no restriction in the elements of vector.
#Matrix, two dimensional array, data frame,
#all elements of matrix should be in the same data type
#data frame does not have a restriction of column,
#in matrix all data should be in the same data type. 
#in the case of array, there is 3 5 dimension, no restrictions. 

#in R the most of the data stored in data frame.rows&columns.


#####VECTORSS########

a <- rep(c(1:2), times = 5)
#replicate 1 and 2, 5 times
b <- rep(c(1:2), each = 3)
#replicate 1 and 2, 3 times each
d <- rep(c(1:2), times = 2, each = 3)
#replicate 1 and 2, 3 times each for 2 times
e <- rep(c(1:2), len = 5)
#replicate 1 and 2, the length is 5.

a <- seq(from = 1, to = 2, by = .1)
#a squence stars from 1 to 2, increases number by .1
a <- seq(1, 2, by = .1)
#you can also write it this way
b <- seq(1, 2, length.out = 7)
#from 1 to 2, in 7 pieces

set.seed(123)
a <- runif(10)
#standart uniform distribution, 10 random numbers drawn from
#uniform distribution
a <- rnorm(10)
#10 numbers drawn from normal distribution
a

#USAGE rnorm()
#dnorm(x, mean = 0, sd = 1, log = FALSE)
#pnorm(q, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#qnorm(p, mean = 0, sd = 1, lower.tail = TRUE, log.p = FALSE)
#rnorm(n, mean = 0, sd = 1)#

a <- rnorm(10000000, mean = 1, sd = 10)
#10million numbers with mean 1 and sd 10
mean(a)
sd(a)

a <- sample(c(1:5), size = 10, replace = TRUE)
#there are 5 numbers, gives us 10 numbers from that vector
#and replace those numbers, program 
b <- sample(c(1:10), size = 5, replace = FALSE)
#do not replace the numbers, program takes one of them, keeps out.


a
b

b <- sample(c(1:5), size = , replace = FALSE)
b

data.frame(
  ID = (sample(c(1:40), size = 40, FALSE)),
  Proje = (rep(c(1:10), times = 4)),
  Topic = rep(c(1:5), times = 8))

####


a <- c(1,2,4)
a[2]*10
a[c(2,3)]
a[a > 2.5]
#creating a logical vector find the elemants greater than 2.5
a > 2.5
#FALSE FALSE TRUE

b <- a > 2.5
a[b]
#return only true elements of a to b

a[1] <- 10
a[c(1,2)] <- c(10, 15, 30) 
#gives error since 2 on the left and 3 on the right

#select the two elemnts of vector 
#it will replicate 10, 2 times

a[10] <- 100
#not a good practice, it is better to know the size of the vector in the
#beginning. 

#matrix - same data type
#data frame- more flexbile

######DATA FRAMES #####

aa <- data.frame(a = 1:4, b = c("a", "b", "c", "d"), 
                 z = c(1, 3, 5, NA), stringsAsFactors = FALSE)
#first column a numbers from1 to 4, second column abcd, z, 
#if you have charachters, R converts them to factors because factors
#takes smaller space than charachters. IT is a bit tricky to deal with factors.
bb <- data.frame(a = 1, b = c("A", "B", "C", "D"), z = "Z", 
                 stringsAsFactors = FALSE)
#it recyles "a" and "z" for four times.

bb <- data.frame(a = c(1:3), b = c("A", "B", "C", "D"), z = "Z", 
                 stringsAsFactors = FALSE)
#it gives an error because we cannot recyle 3 element vector to get
#4 element vector.
bb <- data.frame(a = c(1:2), b = c("A", "B", "C", "D"), z = "Z", 
                 stringsAsFactors = FALSE)
#now it is 1:2 so that it can recycle the vector.


aa
bb

class(aa) 
#gives you "data.frame"

dim(aa)
#gives you 4 observations, 3 variables

nrow(aa)
#number of columns

ncol(aa)
#number of columns

length(aa)
#each variable is a list in the frame, it means we have 3 variables. it is equal to 
#number of columns

str(aa)


#integer ile numerical arasindaki fark nedir?
#numericte decimal olabilir, integer tam sayi. 
#in terms of programming, numeric values take more space in the disk
#than integers.


a <- c(1:10000000)
mode(a) #numeric
object.size(a)

b <- as.integer(a)
mode(b)
a <- as.numeric(b)
mode(a)
mode(b)
#if you deal with very large data sets, it is better to use them
#as integers than numerical values.

mean(aa$a) or
mean(aa[, "a"]) # since we refer to column or
mean(aa[, 1])
#indexing for variables

aa[2,]
#take the second row of all variables, the second observations

aa[aa$a > 1,]


#combining row indexing with column indexing.
aa[aa$a >1, "z"]
#a s greater than 1 and return to z variable
#indexing is very important we are gonna deal with it everytime.


aa[!is.na(aa$z),]
#na olmayanari karsilsatir

sum(is.na(aa$z))
#boyle bir komut yazarak kac tane missing value oldugunu bulabiliriz.

z <- c(1:4)
mean(z)

       
######

toplam <- function(x, y = 0) {
  z <- x + y
  return(z)
}
#if i write toplam, i will get the function itself

toplam(4)
#but if i write toplam(4)
#answer is 4
toplam(5,4)
#the outcome is 9
toplam(y = 5, x = 4)
#order is not important
toplam(y = 5)
#error since is not defined.

toplam(4, TRUE)
#true is equal to one
#answer is 5
toplam(4 + TRUE, 2*3)
#the outcome is 11.s

toplam(toplam(4,3), toplam(5))
#first calculates toplam(5), then toplam(4,3)


##EN ONEMLISI INDEXING I IYI YAPMAK
#HAYATI
#