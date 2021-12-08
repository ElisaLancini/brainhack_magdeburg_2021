# Brainhack-magdeburg, 8th Dec 2021
#### Tutorial 3 - DATA FRAMES #### 

# DATA FRAMES are like matrices but can contain different types of data, and needs unique rows and columns names
# Store several vectors (meaning that they contain several rows and columns).

#### Create data frame using data.frame() function #### 
# option 1
column_1=c('9.1','8.96','9.05','9.31','8.83','9.06','9.1','6.33')
column_2=c('59','130','87','182','246','540','1096','3532')
variable_dataframe_1 <- data.frame(column_1, column_2)
# option 2
variable_dataframe <- data.frame("column_1" = c(9.1,8.96,9.05,9.31,8.83,9.06,9.1,6.33), "column_2" = c(59,130,87,182,246,540,1096,3532))

# remove variables you do not need anymore
rm(variable_dataframe_1,column_1,column_2)

#### Check the variable #### 

class(variable_dataframe)      # check if the variable is a data frame
mode(variable_dataframe)       
typeof(variable_dataframe)     # check if numeric data is double or integer 

names(variable_dataframe)      # columns name
dimnames(variable_dataframe)   # command operates on both rows and columns at once
colnames(variable_dataframe)   # access columns names
rownames(variable_dataframe)   # access rows names

nrow(variable_dataframe)
ncol(variable_dataframe)
length(variable_dataframe)     # returns length of the list, same as ncol() 
dim(variable_dataframe) #check the dimension 

str(variable_dataframe) 
head(variable_dataframe)

#### Access the variable (indexing) #### 
# We can use either [, [[ or $ operator to access columns of data frame.
variable_dataframe
variable_dataframe[c(3,2),2] 
variable_dataframe[c(3,2),]           # leaving column field blank will select entire columns
variable_dataframe[1:3, 1:2]
variable_dataframe$column_1        
variable_dataframe$column_2
variable_dataframe["column_1"]
variable_dataframe$column_2
variable_dataframe[["column_2"]]
variable_dataframe[[2]]
variable_dataframe["8","column_2"]
variable_dataframe[variable_dataframe$column_1 > 6,]              # selects rows higher than 5
variable_dataframe[-1]                      # access all but first column
variable_dataframe[-2,-1]                   # access all but first column and second row


# #if the returned variable is a row or a column, then the result is given as a vector. This can be avoided by adding
# the argument drop=FALSE 
variable_dataframe
variable_dataframe[1:2,2]               # access the first two elements of column 2
variable_dataframe[1:2,2,drop=FALSE]

#### Modify data ####
variable_dataframe
variable_dataframe$column_1[[2]]<- 200
variable_dataframe

variable_dataframe[2,"column_1"] <- 300
variable_dataframe

variable_dataframe[2, 1] <- 255       
# or
variable_dataframe$column_1[2] <- 255   #same thing as above

variable_dataframe
variable_dataframe$column_1[[2]]<-8.96
variable_dataframe

#### Modify rows and columns name ####
colnames(variable_dataframe) <- c("rating","characters_deaths")
rownames(variable_dataframe) <- c('row 1','row 2','row 3', 'row 4','row 5', 'row 6','row 7','row 8')

#### Summarize data ####
mean(variable_dataframe$rating)  
median(variable_dataframe$characters_deaths)

rowMeans(variable_dataframe) #calculate the row-wise or column-wise means 
colMeans(variable_dataframe)

#### Sort data ####
# sort by contests of a column of the dataset
variable_dataframe[order(variable_dataframe$characters_deaths),]    # ascendent
variable_dataframe[order(-variable_dataframe$characters_deaths),]   # descendent

variable_dataframe[order(variable_dataframe$rating),]
variable_dataframe[order(-variable_dataframe$rating),]

variable_dataframe[variable_dataframe$characters_deaths > 100,]              

