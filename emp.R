#Empiric avarage and standard deviation calculation for an array

x <- rnorm(100)
print("100 random number: ")
x

average <- function(x) {
  s <- 0
  for(i in (1:length(x))) { # nolint
    s <- s + x[i]
  }
  print(s / length(x))
}

deviation <- function(x) {
  s <- 0
  e <- average(x)
  for(i in (1:length(x))) { # nolint
    s <- s + (x[i] - e)^2
    s <- sqrt(s)
  }
  print(s / length(x))
}
deviation(x)