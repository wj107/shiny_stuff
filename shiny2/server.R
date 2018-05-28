library(shiny)
library(ggplot2)



function(input,output){
	##dat2<-dat$Fare[(dat$Fare<input$top)]  ## & dat$Fare>input$bottom)]
	x1<-seq(-10,10,,201)

	output$graph<-renderPlot({
		ggplot(dat=data.frame(X=x1,Y=input$slope*x1+input$intercept),aes(X,Y))+
		geom_line(size=4,color="black")+
		ggtitle("Y=MX+B")+
		xlab("x-axis")+
		ylab("y-axis")+
		xlim(-10,10)+
		ylim(-50,50)
	})
	}
