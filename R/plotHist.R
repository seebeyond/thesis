makeHist <- function(inputPath) {
  data <- read.csv(inputPath)
  x <- data$count
  breaks<- c(0,0.1,0.2,0.5,1,2,5,10,20,50,100,200,500,1000,10000)
  major <- c(0.1,1,10,100,1000,10000)
  H <- hist(log10(x),plot=F)
  plot(H$mids,H$counts,type="n", xaxt="n", xlab="log(X)",ylab="Counts")
  abline(v=log10(breaks),col="lightgrey",lty=3)
  abline(v=log10(major),col="lightgrey",lty=3)
  abline(h=pretty(H$counts),col="lightgrey",lty=3)
  plot(H,add=T,freq=T,border="black",lwd=2)
  #Position of ticks
  at <- log10(breaks)
  
  #Creation X axis
  axis(1,at=at,labels=10^at)
}