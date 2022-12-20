# Які назви стовпців файлу даних?

file_1 <- read.csv(file = "C:/Users/aksoyde/Downloads/hw1_data.csv)
colnames(file_1)

# Виведіть перші 6 строк фрейму даних.

head(file_1, 6)

# Скільки спостерігань (строк) в дата фреймі?

nrow(file_1)

# Виведіть останні 10 строк дата фрейму

tail(file_1, 10)

# Як багато значень «NA» в стовпці «Ozone»?

sum(is.na(file_1))

# Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення

mean(file_1[ , "Ozone"], na.rm=T)

# Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?

subset_1<-subset(file_1, Ozone>31 & Temp>90)
subset_1
mean(subset_1[ , "Solar.R"], na.rm=T)

# Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?

mean(subset(file_1, (file_1$Month == 6))$Temp)

# Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?

max(subset(file_1, (file_1$Month == 5))$Ozone, na.rm = TRUE)

