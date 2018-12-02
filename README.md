# BasicDataViz Line plot
Basic line plot using ggplot2. 

**Creating a sample data** 

    dataLine <- data.frame(input=c("First", "Second", "Third", "Fourth", "Fifth"),
                     amount=c(5, 10, 30, 40, 50))
    head(dataLine)
    input amount
    1  First      5
    2 Second     10
    3  Third     30
    4 Fourth     40
    5  Fifth     50

**Basic line plot**
Loading the library

    library(ggplot2)

**Basic line plot with points**

    ggplot(data=dataLine, aes(x=input, y=amount, group = 1)) + geom_line()+ geom_point()

![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/1.png)

**Change the line type**

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + geom_line(linetype = "dashed")+ geom_point()
![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/2.png)

**Change the color**

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(color="red") + 
      geom_point()
![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/3.png)

**Change the line width**

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(color="red", size = 1.5) + 
      geom_point()
![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/4.png)

**Rearranging into the order intended**

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(color="red", size = 1.5) + 
      geom_point() + 
      scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth"))
![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/5.png)

**Plot head and axis titel**

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(color="red", size = 1.5) + 
      geom_point() + 
      scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
      ggtitle("Line plot") + 
      labs(x = "Serial", y = "Amount")

![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/6.png)

    Applying different themes

    install.packages("ggthemes", dependencies = TRUE)
    library(ggthemes)
Listing all the themes,

    ls("package:ggthemes")[grepl("theme_", ls("package:ggthemes"))]
     [1] "theme_base"            "theme_calc"           
     [3] "theme_economist"       "theme_economist_white"
     [5] "theme_excel"           "theme_excel_new"      
     [7] "theme_few"             "theme_fivethirtyeight"
     [9] "theme_foundation"      "theme_gdocs"          
    [11] "theme_hc"              "theme_igray"          
    [13] "theme_map"             "theme_pander"         
    [15] "theme_par"             "theme_solarized"      
    [17] "theme_solarized_2"     "theme_solid"          
    [19] "theme_stata"           "theme_tufte"          
    [21] "theme_wsj"

Economist theme,

![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/7.png)

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(size = 1.5) + 
      geom_point() + 
      scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
      ggtitle("Line plot") + 
      labs(x = "Serial", y = "Amount") + 
      theme_economist()

Tufte theme,

    ggplot(data=dataLine, aes(x=input, y=amount, group=1)) + 
      geom_line(size = 1.5) + 
      geom_point() + 
      scale_x_discrete(limits=c("First", "Second", "Third", "Fourth", "Fifth")) +
      ggtitle("Line plot") + 
      labs(x = "Serial", y = "Amount") + 
      theme_tufte()
![enter image description here](https://github.com/haseebmahmud/BasicDataViz/blob/master/8.png)
