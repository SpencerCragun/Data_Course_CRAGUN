

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

as.Date(Downstairs$Date_Collected)


#### Task Six #### 

BensData <- DNA_CONC_DATA[,-4]
Year <- BensData$Year_Collected

