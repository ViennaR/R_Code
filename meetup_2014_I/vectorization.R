x <- c(1, 2, 3, 4, 5)
x + 4
x * 2
x ^ 3

x <- c(1, 2, 3)

lsum <- 0
for(i in 1:length(x)) {
    lsum <- lsum + log(x[i])
}

log(x)
sum(log(x))

ifelse(x >= 3, x, NA)
ifelse(x >= 3, x^2, NA)
3 * ifelse(x >= 3, x, NA)

x <- (1:5)^2
x[c(1, 3, 5)]
x[c(-2, -4)]
x[c(TRUE, FALSE, TRUE, FALSE, TRUE)]

a <- 1:10
b <- 10:20
b[which(a %% 2 == 0)]
a[3:6]

set.seed(1)
a_data_frame <- data.frame(
  x = letters[1:5],
  y = rnorm(5),
  z = runif(5) > 0.5
)
a_data_frame[c(2, 3), -3]

c(1, 4) + 1:10 # Recycling
c(1, 2, 3) + 1:10 # Not Recycling

x <- c(1, 2, 3, 4, 5)
x + 4
x * 2
x ^ 3

max(2, -100, -4, 3, -230, 5) # vector args? 
max(c(1, 2, 3))
mean(2, -100, -4, 3, -230, 5) # vector args?!
mean(c(2, -100, -4, 3, -230, 5)) # yep.
max(1:5, 3)

log_square_sum <- function(logargs, squareargs){
    log(logargs) + squareargs^2
}
log_square_sum(1:3, 2:4)

firstnames <- c("Joe", "William", "Jack", "Averell")
lastname <- c("Dalton")
paste(firstnames, lastname)

single_element <- function(element){
    switch(element,
           good = "nice!",
           bad = "bah!",
           "so-so..."
           )
}
single_element(c("good", "good", "bad", "dunno"))

vector_element <- Vectorize(single_element)
vector_element(c("good", "good", "bad", "dunno"))

time1 <- proc.time()
res1 <- sapply(1:1000000, exp)
time2 <- proc.time()
time2 - time1

time1 <- proc.time()
res2 <- exp(1:1000000)
time2 <- proc.time()
time2 - time1

all(res1 == res2)

f <- function(x, c) return((x + c)^2)
f(1:3, 0)
f(1:3, 1)
f(1:3,1:3)

'+'(1:3, 5)
