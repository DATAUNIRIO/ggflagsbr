# ggflagsbr
Brazilian State Flags for ggplot2

```{r}

devtools::install_github("DATAUNIRIO/ggflagsbr")


df <- data.frame(
  uf = c("RJ", "SP", "MG", "BA"),
  value = c(10, 20, 15, 12)
)

df$image <- get_flag_uf(df$uf)

ggplot(df, aes(x = uf, y = value)) +
  geom_col(fill = "grey80") +
  geom_flag_uf(aes(image = image), size = 0.08) +
  theme_minimal()
```

