# 1. Створити змінні базових (atomic) типів. 
# Базові типи: character, numeric, integer, complex, logical.
character <- "Hello"
numeric <- 3
integer <- "x"
logical <- TRUE
complex <- 2+1i

# 2. Створити вектори, які: містить послідовність з 5 до 75;  містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.
Vector_1 <- c(5:75)
Vector_2 <- c(3.14, 2.71, 0, 13)
Vector_3 <- rep(100, c(TRUE))

# 3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind

matrix(c(0.5, 3.9, 0, 2, 1.3, 131, 2.2, 7, 3.5, 2.8, 4.6, 5.1), ncol=3, nrow=4)
col_1<-c(0.5, 3.9, 0, 2)
col_2<-c(1.3, 131, 2.2, 7)
col_3<-c(3.5, 2.8, 4.6, 5.1)
combined_matrix<-cbind(col1, col2, col3)

# 4. Створити довільний список (list), в який включити всі базові типи.
list_1 <- list(2, 21.3, "sin", TRUE, 1+2i)
print(list_1)

#5. Створити фактор з трьома рівнями «baby», «child», «adult».
people <- c('baby', 'baby', 'child', 'adult', 'adult', 'adult', 'baby')
factor_people <- factor(people)
print(nlevels(factor_people))

# 6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. 
# Знайти кількість значень NA.
naVector <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
print(length(naVector) - sum(is.na(names(a)) == FALSE))

# 7. Створити довільний data frame та вивести в консоль.
teams <- data.frame(
  tp = c("Toto", "Horner","Binoto"), 
  team = c("Mers", "RedBull", "Ferrari"), 
  wins = c(65, 42, 150)
)
print(teams)

# 8. Змінити імена стовпців цього data frame.
tp = c("Toto", "Horner","Binoto"), 
colnames(tp) <- c("Wolf", "Christian", "Mattia")
print(tp)


[[1]]
[1] 2

[[2]]
[1] 21.3

[[3]]
[1] "sin"

[[4]]
[1] TRUE

[[5]]
[1] 1+2i

[1] 3
      tp    team   wins
1   Toto    Mers     65
2 Horner  RedBull    42
3 Binoto  Ferrari   150