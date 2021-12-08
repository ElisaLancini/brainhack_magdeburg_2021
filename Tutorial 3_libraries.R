# Brainhack-magdeburg, 8th Dec 2021
#### Tutorial 3 - LIBRARIES #### 

#### Check which libraries (or packages) are already installed #### 
library()
installed.packages()

#### Install a specific package #### 
install.packages("cowsay")

#### Load a specific package #### 
# to use a package, you should load it first
library("cowsay")

# Then you can check how to use it here https://www.r-pkg.org/pkg/cowsay. 
# HAVE FUN!

say('you made it! I am installed! You can modify what I say, and also the type of animal!')
say('He s the hero Gotham deserves, but not the one it needs right now. ...', by='bat')
say('Patience you must have my young Padawan', by="yoda") #For Star wars fans
say('...do you want to build a snowmaaaaan?', by="snowman") #For Frozen fans

#### Remove a specific package #### 
# You don't have to remove a package after using it, however if you want to remove it: 
remove.packages("cowsay")