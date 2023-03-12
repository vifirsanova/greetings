# Присвоим значения переменным
# Частоты предлогов ДО:
before <- c(6, 7, 7, 3, 5, 4, 4, 3, 6, 3, 6, 7, 5, 10, 5, 6, 4, 2, 2, 5, 4, 3, 6, 0, 0)
# Частоты предлогов ПОСЛЕ:
after <- c(2, 3, 2, 7, 3, 1, 0, 4, 2, 3, 3, 1, 1, 1, 5, 4, 1, 2, 9, 0, 2, 0, 3, 4, 0)
# Создадим таблицу
prep <- cbind(before, after)
prep
boxplot(prep, names=c('before', 'after'), ylab = 'Preposition frequency', main = 'Freq')
# Проверим наличие связи
cor.test(before, after, method = 'spearman', alternative = 'greater')
# P-value > 0.05
# Зависимость наблюдается