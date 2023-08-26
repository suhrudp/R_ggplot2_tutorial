# DATA VISUALIZATION USING THE `ggplot2` PACKAGE

## **LOAD LIBRARIES**

```{r}
library(ggplot2)
library(ggthemes)
```

## **ATTACH DATA**

```{r}
df <- datasets::iris
attach(df)
View(df)
?iris
```

## **EXPLORATORY ANALYSIS**

```{r}
table1 <- tbl_summary(df, by="Species") %>% add_p()
table1
```

## CREATE A ggplot OBJECT

```{r}
base1 <- ggplot(data=df, aes(x=Species, y=Sepal.Length, group=Species, fill=Species))
base1
```

## ADD A BOXPLOT ARGUMENT

```{r}
box1 <- base1 + geom_boxplot()
box1
```

## ADD MEANS TO THE BOXPLOTS

```{r}
mean1 <- box1 + stat_summary(fun="mean")
mean1
```

## ADD A TITLE, SUBTITLE, CAPTION, CHANGE LABELS

```{r}
labs1 <- mean1 + labs(title="Sepal length",subtitle="Species-wise",x="Species",y="Sepal length",caption="Based on the 'Iris' dataset",color="Plant species")
labs1
```

## ADD A THEME FOR THE PLOT

```{r}
theme1 <- labs1 + theme_bw()
theme1
```

## CHANGE THE COLOR SCHEME

```{r}
col1 <- theme1 + scale_fill_wsj()
col1
```

## ADD ADDITIONAL DATA

```{r}
jit1 <- col1 + geom_jitter()
jit1
```

## CREATE A SCATTERPLOT WITH A REGRESSION LINES

```{r}
plot2 <- ggplot(data=df, aes(x=Petal.Length, y=Sepal.Length)) + geom_point() + geom_smooth(method="lm") + theme_bw()
plot2
```

## CREATE SCATTERPLOTS FOR DIFFERENT GROUPS

```{r}
plot3 <- ggplot(data=df, aes(x=Petal.Length, y=Sepal.Length, group=Species, color=Species, fill=Species)) + geom_point() + geom_smooth(method=lm) + theme_bw() + scale_fill_wsj() + scale_color_wsj() + labs(title="Scatterplot",subtitle="Sepal and Petal lengths",caption="Based on the 'Iris' dataset",x="Petal Length",y="Sepal Length")
plot3
```
