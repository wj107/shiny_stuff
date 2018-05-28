library(shiny)
library(ggplot2)
read.csv("taxisample.csv")->dat



function(input,output){
	##dat2<-dat$Fare[(dat$Fare<input$top)]  ## & dat$Fare>input$bottom)]
	output$graph<-renderPlot({
		ggplot(data.frame(X=dat$Fare[(dat$Fare<input$top & dat$Fare>input$bottom)]),aes(X))+
		geom_histogram(fill="grey80",color="black",bins=input$slices)+
		ggtitle("DISTRIBUTION OF TAXI FARES FROM 50,000 SAMPLE RIDES")+
		xlab("Taxi Cab Fare in $USD")+
		ylab("Frequency")
	})
	}
