#Create a new R script as part of your Assignment 4 R-project. Name it "Assignment_4.R"
#That script should do the following:
# Read in the file: "/Data/ITS_mapping.csv"   ...good luck with that, hahaha!
# Somehow summarize all of the columns and do a bit of additional exploration (play with some functions)
#Make a boxplot where "Ecosystem"" is on the x-axis and "Lat" is on the y-axis
#Write code to export this boxplot to a new file in your Assignment_4 directory called "silly_boxplot.png"
#      Hints on below ...
#Make sure to save your completed script and Rproject and make sure your png file is saved correctly
#Push all these saved changes and new files onto your GitHub repository so I can grade them
#Don't forget the plaintext file with answers to bolded questions needs to go to Canvas as well!      


df <- read.delim("./ITS_mapping.csv")
summary(df)

summary(df$Ecosystem)
summary(df$Island)

boxplot(df$Lat~df$Ecosystem, main="Latitude vs. Ecosystem Type", xlab="Ecosystem",ylab="Latitude")

png(filename = "./silly_boxplot.png")
boxplot(df$Lat~df$Ecosystem, main="Latitude vs. Ecosystem Type", xlab="Ecosystem",ylab="Latitude")
dev.off()

