#---------------------------------------
#----- SIMPLE SHINY APP
#---------------------------------------


library(shiny)
library(ggplot2)
read.csv("taxisample.csv")->dat

slider1<-sliderInput("top","Maximum fare?", min=1,max=100,value=20)
slider2<-sliderInput("bottom","Minimum fare?", min=1,max=10000,value=10)
slider3<-sliderInput("slices","How many breaks in the graph?", min=4,max=100,value=20)


server<-function(input,output){
	##dat2<-dat$Fare[(dat$Fare<input$top)]  ## & dat$Fare>input$bottom)]
	output$graph<-renderPlot({
		hist(dat$Fare[dat$Fare<input$top], breaks=input$slices)
	})
	}


ui<-shinyUI(
	fluidPage(
		sidebarLayout(
			sidebarPanel(
				slider1,slider2,slider3
				),
			mainPanel(
				plotOutput("graph")
				)
			)
		)
	)


shinyApp(ui,server)
