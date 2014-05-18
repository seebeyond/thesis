makeTableLDA <- function(path, caption, label="") {
  library(xtable)

  data <- read.csv(path, header = TRUE, sep = ",", check.names=FALSE)
  data.table <- xtable(data[,], caption=caption, label=label)
  align(data.table) <- c("|l","|l","|l","|l","|l","|l","|l","|l","|l","|l","|l|")
  colnames(data.table) <- c("T","IR10","IR10","IR10","IR30","IR30","IR30","IR50","IR50","IR50")
  print(data.table, include.rownames=FALSE, hline.after=c(-1, 0, 1, 17), table.placement="!h", add.to.row=list(list(c(11,13)),"\\rowcolor[gray]{.7} "))
}
