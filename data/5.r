ad = read.csv("Advertising.csv")

#using inbuilt function
multi.fit = lm(sales~TV+radio+newspaper,data=ad)
multi.fit

#without using inbuilt function
mlr <- function(x, y) {
  beta_hat <- solve(t(x) %*% x) %*% t(x) %*% y
  print(beta_hat)
}

X = as.matrix(cbind(1, ad$TV, ad$radio, ad$newspaper))
y = as.matrix(ad$sales)
beta_hat = mlr(X, y)

mod1 <- lm(sales ~ ., data = ad)
print(mod1)

