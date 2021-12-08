# Brainhack-magdeburg, 8th Dec 2021
#### Tutorial 3 - PLOTS #### 

# Documentation of the functions used in this code:
# Bar plot: https://www.rdocumentation.org/packages/graphics/versions/3.6.2/topics/barplot
# Dev off : http://rfunction.com/archives/812
# Ggplot2 : https://cran.r-project.org/web/packages/ggplot2/ggplot2.pdf 

#### Bar Plot using barplot() #### 
# dataset (from variable_dataframe <https://www.statista.com/statistics/1229293/number-of-countries-that-permit-same-sex-marriage-by-continent)
dataset<-data.frame( "number_of_countries" = c(17,9,3,1), "continent"=c('Europe','America','Asia and Oceania','Africa'))
# Step 1
barplot(dataset$number_of_countries)
# Step 2
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ",)
# Step 3
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries")
# Step 4
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent)
# Step 5
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0) 
# Step 6
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0)
# Step 7
# find a color and add it to the bars
colors()
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0, col = "turquoise3") 
# Change to rainbow
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0, col = rainbow(9)) 


#### Bar Plot using ggplot() #### 
# dataset
dataset1 <- data.frame("rating" = c(9.1,8.96,9.05,9.31,8.83,9.06,9.1,6.33),"viewers" = c(9.3,11.6,14.4,19.1,20.2,25.7,32.8,44.2), "characters_deaths" = c(59,130,87,182,246,540,1096,3532), "season"=c('Season 1','Season 2','Season 3', 'Season 4','Season 5', 'Season 6','Season 7','Season 8'))
# load library
library(ggplot2)
# create graph
ggplot(dataset1,aes(season,characters_deaths,fill=characters_deaths))+
        geom_bar(stat="identity")+
        scale_fill_gradient(low="pink" ,high="red2")+
        labs(y= "number of deaths", x = "seasons")+
        ggtitle("Game of Thrones deaths per season")+
        guides(fill=guide_legend(title="Legend"))


#### How to save a plot ####
# You can either click on the Plots tab -> Export , or you can use the dev.off() function

# Step 1: set path where the plot will be saved
setwd('/Users/elisalancini/Dropbox/PhD/SynAge/brainhack')
# Step 2 
# define the format and the name
jpeg(file="plot.jpeg") 
# plot
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0, col = rainbow(9)) 
# call the dev.off() function 
dev.off() 

# You can also specify the dimension of the plot
png(file="plot.png",
    width=600, height=350)
barplot(dataset$number_of_countries, main = "Number of countries that permit same-sex marriage 2021, by continent ", xlab="Number of countries", names.arg=dataset$continent, space=0, col = rainbow(9)) 
dev.off()

 


