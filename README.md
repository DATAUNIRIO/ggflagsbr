# ggflagsbr: Plot flags of the Brazilian States in ggplot2

A Brazilian State Flag geom for ggplot2. 


```{r}

# devtools::install_github("DATAUNIRIO/ggflagsbr")

library(ggplot2)
library(ggflagsbr)


df <- data.frame(
  uf = c("RJ", "SP", "MG", "BA"),
  value = c(10, 20, 15, 12)
)

df$image <- get_flag_uf(df$uf)
df$image2 <- get_flag_circle_uf(df$uf)

#--------------------------------------------------------------
ggplot(df, aes(x = uf, y = value)) +
  geom_col(fill = "grey80") +
  geom_flag_uf(aes(image = image), size = 0.08) +
  #geom_flag_uf(aes(image = image2), size = 0.08) +
  theme_minimal()
  
#--------------------------------------------------------------
ggplot(df, aes(x = uf, y = value)) +
  geom_col(fill = "grey80") +
  geom_flag_uf(aes(image = image), size = 0.1, y = 1) +
  theme_minimal()

#--------------------------------------------------------------
ggplot(df, aes(x = uf, y = value)) +
  geom_col(fill = "grey80") +
  geom_flag_uf(aes(image = image2), size = 0.08) +
  theme_minimal()

#--------------------------------------------------------------
library(ggplot2)
library(ggflagsbr)

set.seed(1234)
d <- data.frame(
  x = rnorm(50), y = rnorm(50),
  country = sample(c("RS","PE","RJ", "SP", "MG", "BA"), 50, TRUE),
  stringsAsFactors = FALSE
)

#d$image <- get_flag_uf(d$country)
d$image <- get_flag_circle_uf(d$country)


ggplot(d, aes(x = x, y = y, country = country, size = x)) +
    geom_flag_uf(aes(image = image), size = 0.08) +
  scale_size(range = c(0, 15))  
```

![]('img/scatter.png')




