
# Defining sample vector
x <-mtcars$disp
x
y <-mtcars$gear
y

# One Sample T-Test
t.test(mtcars$disp, mu=50)

# Two Sample T-Test
t.test(mtcars$disp,mtcars$gear,paired=FALSE)

#Paired Sample T-Test
t.test(mtcars$disp,mtcars$gear,paired=TRUE)

# Step 2: Calculate test statistics using aov function
mtcars_aov2 <- aov(mtcars$disp~factor(mtcars$gear)*factor(mtcars$am))
mtcars_aov2

summary(mtcars_aov2)

# Variance in mean within group and between group
boxplot(mtcars$disp~mtcars$gear, subset = (mtcars$am == 0),
        xlab = "gear", ylab = "disp", main = "Automatic")
boxplot(mtcars$disp~mtcars$gear, subset = (mtcars$am == 1),
        xlab = "gear", ylab = "disp", main = "Manual")