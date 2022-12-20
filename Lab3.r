# Функція add2(x, y), яка повертає суму двох чисел.


add2 <- function(x, y) {
  return (x+y)
}
add2(7,70)

# Функція above(x, n), яка приймає вектор та число n, та повертає всі елементі вектору, які більше n. По замовчуванню n = 10


above <- function(vec_1, n=10) {
vec_1<-vec_1[vec_1>n]
vec_1
}
above(21:41)
above(c(17, 7, 27, 47, 37))

# Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.


my_ifelse <- function(x, exp, n) {
    if (exp == "<") {
        return(x[which(x < n)])
    } else if (exp == ">") {
        return(x[which(x > n)])
    } else if (exp == "<=") {
        return(x[which(x <= n)])
    } else if (exp == ">=") {
        return(x[which(x >= n)])
    } else if (exp == "==") {
      return(x[which(x == n)])
    } else {
        return(x)
    }
}
vec_2 <- c(7, 17, -7, 27, 37)
print(my_ifelse(vec_2, ">", 17))

# Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.


columnmean <- function(x, removeNA = TRUE) {
    res = c()
    for(i in 1:ncol(x)){
        if (removeNA && length(which(!is.na(x[[1]]))) > 0) {
            res[i] <- mean(x[[i]], na.rm=TRUE)
        } else {
            res[i] <- mean(x[[i]])
        }
    }
    return(res)
}
vec_3 <- data.frame(a = rnorm(100), b = 1:100, cc = rnorm(100))
print(columnmean(vec_3, FALSE))
mat_1 <- matrix(c(1, NA, 3, 4, 5, NA, 7, 8, 9, NA, 11, 12), ncol = 3, nrow = 4, byrow = TRUE)
print(columnmean(mat_1, TRUE))