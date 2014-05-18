makePlot_CDF <- function(inputPathDeceptive, inputPathTruthful, metric) {  
  ott_deceptive <- read.csv(inputPathDeceptive)
  ott_truthful <- read.csv(inputPathTruthful)
  ott_deceptive_cum <- ecdf(ott_deceptive[,1])
  ott_truthful_cum <- ecdf(ott_truthful[,1])
  plot_colors <- c("blue","red")
  plot(ott_truthful_cum, xaxs="i", yaxs="i", xlab="x_i", ylab="Prob(x_i<=y)", 
       pch=15, lty=1, lwd=3, cex=0.8, verticals = TRUE, do.points = FALSE,
       col=plot_colors[1], xlim=c(0, 1), ann=FALSE)
  lines(ott_deceptive_cum, pch=15, lty=1, lwd=3, cex=0.8, col=plot_colors[2],
        verticals = TRUE, do.points = FALSE)
  box()
  abline(h = 0.8, lty=3, col = "gray50")
  abline(v = 0.38, lty=3, col = "gray50")
  abline(v = 0.45, lty=3, col = "gray50")
  abline(h = 0.4, lty=3, col = "gray50")
  abline(v = 0.24, lty=3, col = "gray50")
  abline(v = 0.31, lty=3, col = "gray50")
  legend("bottomright", c("truthful", "deceptive"), col=plot_colors, cex=0.8, lty=1, lwd=3)
}