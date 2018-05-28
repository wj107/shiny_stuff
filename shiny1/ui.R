
library(shiny)
library(ggplot2)
read.csv("taxisample.csv")->dat

slider1<-sliderInput("top","Maximum fare to consider?", min=1,max=100,value=20)
slider2<-sliderInput("bottom","Minimum fare to consider?", min=1,max=100,value=10)
slider3<-sliderInput("slices","How many breaks in the graph?", min=1,max=100,value=25)

shinyUI(
	fluidPage(
		title="How much does a taxi ride cost in Chicago???",
		sidebarLayout(
			sidebarPanel(
				slider1,slider2,slider3, "Based on the R functions created by Phuong, Ryan, and Will, AKA Kendall R Club."
				),
			mainPanel(
				plotOutput("graph")
				)
			)
		)
	)
