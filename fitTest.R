#vektor megfigyelt gyakoriságokkal
k <- c(83, 91, 122, 107, 74, 123)
#várt relatív gyakoriságok: egyenlőek mert egyenletes eloszlást feltételezünk
p <- c(1/6, 1/6, 1/6, 1/6, 1/6, 1/6)

#mintnagyság, amely a relatív gyakoriságok százalékos értékeinek meghatározásához szükséges
N <- 600

Fit <- function(k, p, N) {
	khi <- 0
	n <- length(k)
	#Itt számítjuk a Pearson-féle khi értékét a megfigyelt és várt gyakoriságok közötti eltérések alapján
	for (i in 1 : n) {
		khi <- khi + (((k[i] - N * p[i])^2)/(N * p[i]))
	}
	
	return (khi)
}

Fit(k, p, N)
