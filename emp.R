#Empiric avarage and Standard Deviation calculation for an array

array <- rnorm(100)
print("100 random number: ")
array

average <- function(array) {
  sum <- 0
  for(i in (1:length(array))) { # nolint
    sum <- sum + array[i]
  }
  print(sum / length(array))
}

deviation <- function(array) {
  sum <- 0
  E <- average(array)
  for(i in (1:length(array))) { # nolint
    sum <- sum + (array[i] - E)^2
    sum <- sqrt(sum)
  }
  print(sum / length(array))
}
deviation(array)