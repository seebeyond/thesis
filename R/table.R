makeTable <- function(path, caption, label="") {
  library(xtable)

  data <- read.csv(path, header = TRUE, sep = ",", check.names=FALSE)
  data.table <- xtable(data[,][,1:11])
  data.table1 <- xtable(data[, c(1, 12:17, 22:25)], caption=caption, label=label)
  align(data.table) <- c("|l","|l","|l","|l","|l","|l","|l","|l","|l","|l","|l", "|l|")
  align(data.table1) <- c("|l","|l","|l","|l","|l","|l","|l","|l","|l","|l","|l", "|l|")
  colnames(data.table) <- c("T","cos","cos","cos","cos","cpnl","cpnl","cpnl","cpnl","cpl","cpl")
  colnames(data.table1) <- c("T","cpl","cpl","mih","mih","mih","mih","max","max","max","max")
  print(data.table, include.rownames=FALSE, hline.after=c(-1, 0, 1, 6), table.placement="!h")
  print(data.table1, include.rownames=FALSE, hline.after=c(-1, 0, 1, 6), table.placement="!h")
}
