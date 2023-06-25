library(MASS)
?mtcars
head(mtcars)

X1 <- mtcars$cyl
X2 <- mtcars$wt
X3 <- mtcars$vs
X4 <- mtcars$am
Y  <- mtcars$mpg

nullmodel <- lm(Y ~ 1)
fullmodel <- lm(Y ~ X1 + X2 + X3 + X4)

stepAIC(object = nullmodel, scope = list(upper = fullmodel, lower = nullmodel), direction = "forward")$anova
stepAIC(object = fullmodel, scope = list(upper = fullmodel, lower = nullmodel), direction = "backward")$anova
