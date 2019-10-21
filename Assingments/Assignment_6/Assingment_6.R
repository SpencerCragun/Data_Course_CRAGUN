data("mtcars")
library(ggplot2)

automatic_mtcars.csv <- mtcars[which(mtcars$am=='0'),]
write.csv(automatic_mtcars.csv, file = "../Data_Course_CRAGUN/Assingments/automatic_mtcars.csv")

mod1 = lm(hp ~ mpg, data = automatic_mtcars.csv)
mod1          
ggplot(mod1, aes(x=hp,y=mpg)) +
  geom_point() + ggtitle("Horsepower Effect on Miles per Gallon of Automatic Transmissions") +
  xlab("Horsepower") + ylab("Miles per Gallon")

png("../Data_Course_CRAGUN/Assingments/Assignment_6/mpg_vs_hp_auto.png")
ggplot(mod1, aes(x=hp,y=mpg)) +
  geom_point() + ggtitle("Horsepower Effect on Miles per Gallon of Automatic Transmissions") +
  xlab("Horsepower") + ylab("Miles per Gallon")
dev.off()

mod2 <- lm(wt ~ mpg, data = automatic_mtcars.csv)
mod2

ggplot(mod2, aes(x=wt,y=mpg)) + geom_point() +
  ggtitle("Weight's Effect on Miles per Gallon of Automatic Transmissions") +
  xlab("Weigth (in pounds)") + ylab("Miles per Gallon")

tiff("../Data_Course_CRAGUN/Assingments/Assignment_6/mpg_vs_wt_auto.tiff")
ggplot(mod2, aes(x=wt,y=mpg)) + geom_point() +
  ggtitle("Weight's Effect on Miles per Gallon of Automatic Transmissions") +
  xlab("Weigth (in 1000 pounds)") + ylab("Miles per Gallon")
dev.off


disp <- mtcars[which(mtcars$disp <= "200"),]
write.csv(disp, file = "../Data_Course_CRAGUN/Assingments/mtcars_max200_displ.csv")

origmax <- max(mtcars$hp)
dispmax <- max(disp$hp)
automax <- max(automatic_mtcars.csv$hp)
HPmax <- rbind(origmax,dispmax,automax)

write.table(HPmax, file ="../Data_Course_CRAGUN/Assingments/hp_maximums.txt")

