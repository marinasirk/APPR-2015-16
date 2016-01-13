# 4. faza: Analiza podatkov

g <- ggplot(razveze3, aes(y=STEVILO.RAZVEZ, x=LETO)) + geom_point()

# metoda najmanjših kvadratov

g <- g + geom_smooth(method = "lm", formula = y ~ x + I(x^2))

print(g)
