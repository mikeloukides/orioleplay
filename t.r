n <- 10000000
x <- runif(n); y <- runif(n)
inside <- x^2 + y^2 <= 1
pi <- 4 * sum(inside)/n
idx <- sample.int(trunc(n/(log(n))), replace = FALSE )
x <- x[idx]; y <- y[idx]; inside <- inside[idx]
plot(x,y, col=ifelse(inside, "blue", "red"), cex = 0.5, pch = ".",
    main = sprintf("approximation of pi"))
