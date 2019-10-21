#1.
library(dplyr)
library(tidyr)
library(ggplot2)
salaries <- read.csv("Exam_2/salaries.csv")

University <- salaries$UnivName
State <-salaries$State
Tier <-  salaries$Tier

#2.

TidySalary <- gather(salaries, "AssistProf", "AssocProf", "FullProf", key=Ranking, value=Salary)

#.3

ggplot(TidySalary, aes(x=TidySalary$Tier,y=TidySalary$Salary, fill=TidySalary$Ranking)) +
  geom_boxplot() + ggtitle("Faculty Salaries - 1995") + xlab("School Tier") +
  ylab("Salary") + labs(fill="Ranking")

#4.

jpeg("../Data_Course_CRAGUN/Exam_2/Cragun_exam2_plot1.jpeg")
ggplot(TidySalary, aes(x=TidySalary$Tier,y=TidySalary$Salary, fill=TidySalary$Ranking)) +
  geom_boxplot() + ggtitle("Faculty Salaries - 1995") + xlab("School Tier") +
  ylab("Salary") + labs(fill="Ranking")
dev.off() 


#Part II
Atmosphere <- read.csv("Exam_2/atmosphere.csv")

#2.
mod1 = lm(Diversity ~ CO2_Concentration + Aerosol_Density, data = Atmosphere)
mod2 = lm(Diversity ~ Month, data = Atmosphere)
mod3 = lm(Diversity ~ Precip, data = Atmosphere)

#3.


mod1.res <- residuals(mod1)
mod2.res <- residuals(mod2)
mod3.res <- residuals(mod3)

mod1.res <- as.integer(mod1.res)
mod2.res <- as.integer(mod2.res)
mod3.res <- as.integer(mod3.res)

anova(mod1.res)
anova(mod2.res)
anova(mod3.res)

#4.

mod.preds <- gather_predictions(Atmosphere, mod1,mod2,mod3, .pred="Diversity", type=NULL)

#5.

jpeg("../Data_Course_CRAGUN/Exam_2/Cragun_exam2_plot2.jpeg")
ggplot(mod.preds, aes(x = CO2_Concentration, y = Diversity, color=model)) +
  geom_segment(aes(xend = CO2_Concentration, yend = Diversity)) +
  geom_point() +
  geom_point(aes(y = Diversity), shape = 1)
dev.off()

#6.
hyp_data <- read.csv("Exam_2/hyp_data.csv")

gather_predictions(hyp_data, mod1,mod2,mod3, .pred="Diversity", type=NULL)

newpreds1 = add_predictions(hyp_data, model = mod1, type=NULL)
newpreds2 = add_predictions(hyp_data, model = mod2, type=NULL) # Model two does not work because the months are listed as numbers in the
#new hyp_data and the model i used has them as characters. I have looked around a lot and I am
#not sure how to fix that. This also stopped me from doing them all in one line. 
newpreds3 = add_predictions(hyp_data, model = mod3, type=NULL)

#7.

sink("../Data_Course_CRAGUN/Exam_2/model_summaries.txt")
newpreds1
sink()
sink("../Data_Course_CRAGUN/Exam_2/model_summaries.txt", append = TRUE)
newpreds3
sink()

#8. 




#9.

Half.At = sample(nrow(Atmosphere), replace = FALSE,nrow(Atmosphere)/2)
mod.df = Atmosphere[Half.At,]
cross.df = Atmosphere[-Half.At,]
mod.cross = lm(Diversity ~ CO2_Concentration + Aerosol_Density, data = mod.df)
cross.df = add_predictions(cross.df, model = mod.cross, var = "cross.predictions")
