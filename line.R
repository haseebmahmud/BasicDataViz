# Creating a sample data 
dataLine <- data.frame(input=c("First", "Second", "Third", "Fourth", "Fifth"),
                 amount=c(5, 10, 30, 40, 50))
head(dataLine)

# Loading the library
library(ggplot2)

# Basic line plot with points
ggplot(data=dataLine, aes(x=input, y=amount, group = 1)) + geom_line()+ geom_point()

# Change the line type
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + geom_line(linetype = "dashed")+ geom_point()

# Change the color
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(color="red") + 
  geom_point()

# Change the line width
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(color="red", size = 1.5) + 
  geom_point()

# Rearranging into the order intended
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(color="red", size = 1.5) + 
  geom_point() + 
  scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth"))

# Plot head and axis titel
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(color="red", size = 1.5) + 
  geom_point() + 
  scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
  ggtitle("Line plot") + 
  labs(x = "Serial", y = "Amount")

### Different themes
install.packages("ggthemes", dependencies = TRUE)
library(ggthemes)

# List different themes
ls("package:ggthemes")[grepl("theme_", ls("package:ggthemes"))]


# Economist theme
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(size = 1.5) + 
  geom_point() + 
  scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
  ggtitle("Line plot") + 
  labs(x = "Serial", y = "Amount") + 
  theme_economist()

# Tufte theme
ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
  geom_line(size = 1.5) + 
  geom_point() + 
  scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
  ggtitle("Line plot") + 
  labs(x = "Serial", y = "Amount") + 
  theme_tufte()


