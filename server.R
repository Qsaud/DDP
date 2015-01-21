library(shiny) # Load shiny package
dt <- read.csv('tasi.csv',colClasses=c("character","numeric","numeric","numeric","numeric","numeric"))
shinyServer(
  
  
  function(input, output) {
    
    output$text1 <- renderText({
      
      input$clc
      if(input$clc==0)
        return()
      else
        isolate(paste("======> Highest Volume  :" ,max(as.numeric(dt$Volume))))
      
    })
    
    output$text0 <- renderText({
      
      input$clc
      if(input$clc==0)
        return()
      else
        print ("++++++++++++++++++++++++++++++++++++++++" )
      
    })
    
    output$text2 <- renderText({
      
      input$clc
      if(input$clc==0)
        return()
      else
        isolate(paste("======> Highest Close   :" ,max(as.numeric(dt$Close))))
      
    })
    
    output$text3 <- renderText({
      
      input$clc
      if(input$clc==0)
        return()
      else
        isolate(paste("======> Lowest Point   :" ,min(as.numeric(dt$Close))))
      
    })
    output$plot1 <- renderPlot(
      
{
  dt2<- dt
  dt2$date   = as.Date(dt$Date,format="%d-%b-%y")
  lin = as.numeric(input$var)
  plot(as.numeric(dt2$Close), col =input$colour, type='l', main = "TASI closings in 2014",xlim=c(0,250),xlab="Days",ylab="Points" ,lwd =as.numeric(input$lin))}

    )    
  }
)
