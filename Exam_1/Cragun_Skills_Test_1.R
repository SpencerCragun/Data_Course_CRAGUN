

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