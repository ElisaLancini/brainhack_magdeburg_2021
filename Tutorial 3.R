#### 0. Paths
getwd()                                                        # Check current directory
setwd('/Users/elisalancini/Dropbox/PhD/SynAge/brainhack')      # Set working directory 
setwd('/Users/elisalancini/Dropbox/PhD/SynAge/BRAINHACK') #This won't work, as R is case sensitive

#### 1. Create variables #### 

# To create any object in R, we use the assignment operator <-.
a<-1+1
b=5*5
c<-10/10
d="hello!"
e='hi!'
f=5:10 #variable that contains numbers from 5 ro 10

# Check the variable in the "Environment" tab or in the "Console" by running the variable name
a
# or type the variable name (in this case "a") in the Console, and press enter

# To overwrite a variable, you can specify the variable again.
a<-2+2

# You can assign a variable's data to another one
reassigned_a =a

#### Remove object #### 
rm(a)                        # remove a specific variable (a in this case)
rm(list=ls())                # remove all variables in Environment tab
rm(list=setdiff(ls(), "b"))  # remove all variables in Environment tab, but the specified one (b in this case)

#### Clear the Console #### 
# Ctrl+ L or                   
cat("\f")

#####  Arithmetic operators #### 
x <- 5
y <- 16
# for more see https://www.datamentor.io/r-programming/operator/
x+y      # Addition
x-y      # Subtraction
x*y      # Multiplication
y/x      # Division
y%/%x    # Integer division (returns the closes integer number, in this case 3 instead of 3.2 )
y^x      # Exponent

#### Types of variables #### 

# SCALARS = store a single numeric value - 0 dimensional 
variable_scalar=2

# STRINGS: store a set of one or more characters - 0 dimensional 
variable_character_vector="words"

# VECTORS: store several scalar or string elements (also called arrays) - 1 dimensional
# to create it, you should use c() function
variable_numeric_vector=c(1,2.55,3.50,4)
variable_character_vector=c('first','second','third', 'four')

# MATRICES are tables: 2 dimensional, the elements are the same type of data, dimensions of the same length
# to create it, you should use matrix() function
variable_matrix=matrix(data=variable_vector,ncol=2)
variable_matrix=matrix(1:9, nrow = 3, ncol = 3)        # the matrix if by deafult filled columns wise
variable_matrix
variable_matrix=matrix(1:9, nrow=3, byrow=TRUE)        # fill matrix row-wise
variable_matrix
variable_matrix=matrix(1:9, nrow = 3, dimnames = list(c("row 1","row 2","row 3"), c("col 1","col 2","col 3")))  #name the rows and columns of matrix during creation
variable_matrix

#### Check variables' properties #### 

length(variable_numeric_vector) #length
length(variable_matrix)

dim(variable_numeric_vector) #check the dimension 
dim(variable_matrix) 

mode(variable_numeric_vector) # check if the data is numeric or character
#or
class(variable_character_vector)

typeof(variable_numeric_vector) # check if numeric data is double or integer 

nrow(variable_matrix)
ncol(variable_matrix)

colnames(variable_matrix) # access columns and rows names 
rownames(variable_matrix)

#### Describe variables #### 

mean(variable_numeric_vector)   # mean
mean(variable_character_vector)

rowMeans(variable_matrix) #calculate the row-wise or column-wise means 
colMeans(variable_matrix)

#### Access data inside variables #### 

# --- Use numbers as index
# Vectors
variable_numeric_vector[3]            # access 3rd element
variable_character_vector[3]  
variable_numeric_vector[c(2, 4)]      # access 2nd and 4th element (We can use a vector of integers as index)
variable_numeric_vector[-1]           # access all but 1st element (Use a negative integer)
variable_numeric_vector[c(-2, -4)]    # access all but 2nd and 4th element 

# Matrices 
variable_matrix[1,2]                  # access 1st row and 2nd column
variable_matrix[2,2]                  # access 2nd row and 2nd column
variable_matrix[1,1]                  # access 1st row and 1st column
variable_matrix[, 1] # access first column
variable_matrix[1, ] # access first row
variable_matrix[-1]                   # access all but first row, first column
variable_matrix[-2]                   # access all but second row, first column
variable_matrix[,]                    # leaving row as well as column field blank will select entire matrix
variable_matrix[c(1,2),c(2,3)]        # select rows 1 & 2 and columns 2 & 3
variable_matrix[c(3,2),]              # leaving column field blank will select entire columns

#if the matrix returned after indexing is a row matrix or column matrix, the result is given as a vector.
variable_matrix[1] 
variable_matrix
variable_matrix[1,,drop=FALSE]
variable_matrix

# !! common mistakes !!
variable_numeric_vector[c(2, -4)]     # MISTAKE: cannot mix positive and negative integers
variable_numeric_vector[(-2, -4)]     #forgot the c()

#### 4. Modify data ####

# ---- overwrite an element
# Vectors
variable_numeric_vector
variable_numeric_vector[2:3]<-c(100,200)
variable_numeric_vector

variable_character_vector
variable_character_vector[2:3]<-c("replaced1","replaced2")
variable_character_vector

# Matrices
variable_matrix
variable_matrix[2,2]<-3
variable_matrix

# ---- add row or column
variable_numeric_vector[2];

variable_matrix1<-cbind(variable_matrix, c(1, 2, 3))    # add column
variable_matrix2<-rbind(variable_matrix,c(1,2,3))    # add row
variable_matrix3<-variable_matrix[1:2,];    # remove last row

# ----  change columns and rows names
colnames(variable_matrix) <- c("C1","C2","C3")
rownames(variable_matrix) <- c("R1","R2","R3")

#### Bind variables ####

# Create a matrix using functions cbind() and rbind()
variable_matrix_1<-cbind(c(1,2,3),c(4,5,6))
variable_matrix_2<-rbind(c(1,2,3),c(4,5,6))

# Bind two (or more) matrices
bind_matrices<- rbind(variable_matrix1,variable_matrix1)
print(bind_matrices)

#### Reading and writing (Upload your own data and save output)  ####
# Loading





