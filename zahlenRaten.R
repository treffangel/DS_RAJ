#Zahlenraten in R - DS_RAJ

#Funktion zur Eingabe

readinteger <- function()
{
  n <- readline(prompt="Geben Sie eine Zahl ein: ")
  if(!grepl("^[0-9]+$",n))
  {
    return(readinteger())
  }
  return(as.integer(n))
}

# Ratespiel

zahl <- round(runif(1) * 100, digits = 0)
raten <- -1

cat("Welche Zahl hba ich mir ausgedacht? Rate mal!.\n")

while(raten != zahl)
{
  raten <- readinteger()
  if (raten == zahl)
  {
    cat("Super!,", zahl, "ist die richtige Zahl.\n")
  }
  else if (raten < zahl)
  {
    cat("Nein, die Zahl ist höher!\n")
  }
  else if(raten > zahl)
  {
    cat("Nein, die Zahl ist niedriger!\n")
  }
}# Title     : TODO
# Objective : TODO
# Created by: Angie
# Created on: 17.05.2021

