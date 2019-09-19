

#### Task One ####

DNA_CONC_DATA<- read.csv("DNA_Conc_by_Extraction_Date.csv")

hist(x=DNA_CONC_DATA$DNA_Concentration_Ben,
     xlab= "DNA Concentration", main= "Ben's DNA Data")

hist(x=DNA_CONC_DATA$DNA_Concentration_Katy,
     xlab= "DNA Concentration", main= "Katy's DNA Data")

#### Task Two ####

boxplot(DNA_CONC_DATA$DNA_Concentration_Ben~DNA_CONC_DATA$Year_Collected,
        data=DNA_CONC_DATA, main= "Ben's Extractions", ylab="DNA Concentrtion", xlab= "YEAR")

boxplot(DNA_CONC_DATA$DNA_Concentration_Katy~DNA_CONC_DATA$Year_Collected,
        data=DNA_CONC_DATA, main= "Katy's Extractions", ylab="DNA Concentrtion", xlab= "YEAR")

### Task Three ####

jpeg("CRAGUN_Plot1.jpeg")

boxplot(DNA_CONC_DATA$DNA_Concentration_Ben~DNA_CONC_DATA$Year_Collected,
        data=DNA_CONC_DATA, main= "Ben's Extractions", ylab="DNA Concentrtion",
        xlab= "YEAR")

dev.off()

jpeg("CRAGUN_Plot2.jpeg")

boxplot(DNA_CONC_DATA$DNA_Concentration_Katy~DNA_CONC_DATA$Year_Collected,
        data=DNA_CONC_DATA, main= "Katy's Extractions", ylab="DNA Concentrtion",
        xlab= "YEAR")

dev.off()

#### Task Four ####
# Take a look at Ben's concentrations vs Katy's concentrations. You can do this 
#however you like... with a plot or with summary stats or both.
#It looks like Ben had consistently higher DNA yields than Katy did...
#but surely it wasn't uniformly better, right? With some samples, he only had 
#a marginal improvement over Katy
#With other samples, he had a relatively massive improvement over her.
#Your task here is to write some code that tells us: in which extraction YEAR, 
#was Ben's performance the lowest RELATIVE TO Katy's performance?


summary(DNA_CONC_DATA$DNA_Concentration_Ben)
summary(DNA_CONC_DATA$DNA_Concentration_Katy)


##### Task Five ####

Downstairs <-  DNA_CONC_DATA[DNA_CONC_DATA$Lab == "Downstairs",]
as.numeric(levels(BensData$Date_Collected))[BensData$Date_Collected]

plot(Downstairs$Date_Collected, Downstairs$DNA_Concentration_Ben,
     xlab= "Date", ylab= "DNA_Concentration_Ben")


#### Task Six #### 

BensData <- DNA_CONC_DATA[,-4]
Year <- BensData$Year_Collected
Year2000 <- BensData[BensData$Year_Collected == "2000",]
Year2001 <- BensData[BensData$Year_Collected == "2001",]
Year2002 <- BensData[BensData$Year_Collected == "2002",]
Year2003 <- BensData[BensData$Year_Collected == "2003",]
Year2004 <- BensData[BensData$Year_Collected == "2004",]
Year2005 <- BensData[BensData$Year_Collected == "2005",]
Year2006 <- BensData[BensData$Year_Collected == "2006",]
Year2007 <- BensData[BensData$Year_Collected == "2007",]
Year2008 <- BensData[BensData$Year_Collected == "2008",]
Year2009 <- BensData[BensData$Year_Collected == "2009",]
Year2010 <- BensData[BensData$Year_Collected == "2010",]
Year2011 <- BensData[BensData$Year_Collected == "2011",]
Year2012 <- BensData[BensData$Year_Collected == "2012",]

# feel free to laugh at my efforts here #

