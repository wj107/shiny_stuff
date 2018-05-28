
library(shiny)
library(ggplot2)

slider1<-sliderInput("slope","What is the slope of your line?", min=-10,max=10,value=0)
slider2<-sliderInput("intercept","What is the y-intercept of your line?", min=-10,max=10,value=0)
##slider3<-sliderInput("slices","How many breaks in the graph?", min=1,max=100,value=25)

shinyUI(
	fluidPage(
		title="Let's see y=mx+b in action!!",
		sidebarLayout(
			sidebarPanel(
				slider1,slider2, "Adjust the sliders -- watch the line change."
				),
			mainPanel(
				plotOutput("graph")
				)
			)
		)
	)
