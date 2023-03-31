---
title: "Advanced Macro 2 - Assignment 1"
author: "Unterweger L., Oberbrinkmann S."
date: "2023-03-30"
output: pdf_document
---



# Preliminary
We hereby declare that the answers to the given assignment are entirely our own, resulting from our own work effort only. Our team members contributed to the answers of the assignment in the following proportions:\\
\begin{itemize}
  \item Unterweger Lucas: 50%
  \item Oberbrinkmann Sophia: 50%
\end{itemize}

# Question 1: Business cycles stylized facts (4 Points)

We'll start by setting up our coding environment by importing necessary packages. (Code not shown.)


Now, we can import and clean our data set.

```r
ireland <- read_excel("data/Ireland_GDPData.xlsx", sheet = 4)
```

```
## New names:
## * `` -> `...1`
```

```r
colnames(ireland) <- c("t","Y","G","C","I")
head(ireland)
```

```
## # A tibble: 6 x 5
##   t            Y     G     C     I
##   <chr>    <dbl> <dbl> <dbl> <dbl>
## 1 1995-Q1 19924. 4407. 8996. 3573.
## 2 1995-Q2 20344. 4281. 9243. 3754.
## 3 1995-Q3 20559. 4288. 9470. 4123.
## 4 1995-Q4 20866  4138. 9628. 4168.
## 5 1996-Q1 21485. 4561. 9773  4158.
## 6 1996-Q2 21964. 4419. 9879. 4636.
```

```r
GDP <- ts(ireland$Y, start = 1995.0, frequency = 4)
C <- ts(ireland$C, start = 1995.0, frequency = 4)
I <- ts(ireland$I, start = 1995.0, frequency = 4)
G <- ts(ireland$G, start = 1995.0, frequency = 4)
plot(GDP)
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-2-1.pdf)<!-- --> 

```r
plot(C)
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-2-2.pdf)<!-- --> 

```r
plot(I)
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-2-3.pdf)<!-- --> 

```r
plot(G)
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-2-4.pdf)<!-- --> 
## Sample Statistics
Let's compute the sample means:

```r
CdivGDP <- C/GDP
IdivGDP <- I/GDP
GdivGDP <- G/GDP

mean(CdivGDP)
```

```
## [1] 0.4063485
```

```r
mean(IdivGDP)
```

```
## [1] 0.2530171
```

```r
mean(GdivGDP)
```

```
## [1] 0.1719054
```
## Detrending
Let's apply the HP filter:


```r
plot(hpfilter(log(GDP)))
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-4-1.pdf)<!-- --> 

```r
plot(hpfilter(log(G)))
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-4-2.pdf)<!-- --> 

```r
plot(hpfilter(log(I)))
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-4-3.pdf)<!-- --> 

```r
plot(hpfilter(log(C)))
```

![](AdvMacro2_Assignment1_files/figure-latex/unnamed-chunk-4-4.pdf)<!-- --> 

## Business Cycle Stylized Facts


```r
trend_G <- hpfilter(log(G))[1]$cycle
trend_C <- hpfilter(log(C))[1]$cycle
trend_I <- hpfilter(log(I))[1]$cycle
trend_GDP <- hpfilter(log(GDP))[1]$cycle

output_table <- data.frame(
  names = c("GDP","I","C","G"),
  standard_deviation = c(sd(trend_GDP),sd(trend_I),sd(trend_C),sd(trend_G)),
  relative_sd = c(sd(trend_GDP)/sd(trend_GDP),sd(trend_I)/sd(trend_GDP), sd(trend_C)/sd(trend_GDP),sd(trend_G)/sd(trend_GDP)),
  cont_output_corr = c(cor(trend_GDP,trend_GDP), cor(trend_I,trend_GDP), cor(trend_C,trend_GDP), cor(trend_G,trend_GDP))
    )
output_table
```

```
##   names standard_deviation relative_sd cont_output_corr
## 1   GDP         0.03230920   1.0000000        1.0000000
## 2     I         0.25468238   7.8826591        0.1112197
## 3     C         0.03193810   0.9885142        0.4768935
## 4     G         0.02470573   0.7646655        0.1549818
```
### Window 1

```r
GDP_W1 <- window(GDP, end=2007.75)
I_W1 <- window(I, end=2007.75)
C_W1 <- window(C, end=2007.75)
G_W1 <- window(G, end=2007.75)

trend_G <- hpfilter(log(G_W1))[1]$cycle
trend_C <- hpfilter(log(C_W1))[1]$cycle
trend_I <- hpfilter(log(I_W1))[1]$cycle
trend_GDP <- hpfilter(log(GDP_W1))[1]$cycle

output_table_W1 <- data.frame(
  names = c("GDP","I","C","G"),
  standard_deviation = c(sd(trend_GDP),sd(trend_I),sd(trend_C),sd(trend_G)),
  relative_sd = c(sd(trend_GDP)/sd(trend_GDP),sd(trend_I)/sd(trend_GDP), sd(trend_C)/sd(trend_GDP),sd(trend_G)/sd(trend_GDP)),
  cont_output_corr = c(cor(trend_GDP,trend_GDP), cor(trend_I,trend_GDP), cor(trend_C,trend_GDP), cor(trend_G,trend_GDP))
  )
```


### Window 2

```r
GDP_W2 <- window(GDP, start=2008.0)
I_W2 <- window(I, start=2008.0)
C_W2 <- window(C, start=2008.0)
G_W2 <- window(G, start=2008.0)

trend_G <- hpfilter(log(G_W2))[1]$cycle
trend_C <- hpfilter(log(C_W2))[1]$cycle
trend_I <- hpfilter(log(I_W2))[1]$cycle
trend_GDP <- hpfilter(log(GDP_W2))[1]$cycle

output_table_W2 <- data.frame(
  names = c("GDP","I","C","G"),
  standard_deviation = c(sd(trend_GDP),sd(trend_I),sd(trend_C),sd(trend_G)),
  relative_sd = c(sd(trend_GDP)/sd(trend_GDP),sd(trend_I)/sd(trend_GDP), sd(trend_C)/sd(trend_GDP),sd(trend_G)/sd(trend_GDP)),
  cont_output_corr = c(cor(trend_GDP,trend_GDP), cor(trend_I,trend_GDP), cor(trend_C,trend_GDP), cor(trend_G,trend_GDP))
    )
```

### Output

```r
output_table
```

```
##   names standard_deviation relative_sd cont_output_corr
## 1   GDP         0.03230920   1.0000000        1.0000000
## 2     I         0.25468238   7.8826591        0.1112197
## 3     C         0.03193810   0.9885142        0.4768935
## 4     G         0.02470573   0.7646655        0.1549818
```

```r
output_table_W1
```

```
##   names standard_deviation relative_sd cont_output_corr
## 1   GDP         0.01582877    1.000000        1.0000000
## 2     I         0.05050510    3.190716        0.4005525
## 3     C         0.01591679    1.005561        0.4630622
## 4     G         0.02558119    1.616120        0.1368501
```

```r
output_table_W2
```

```
##   names standard_deviation relative_sd cont_output_corr
## 1   GDP         0.03803500   1.0000000      1.000000000
## 2     I         0.34357331   9.0330832      0.054996823
## 3     C         0.03783447   0.9947279      0.392198387
## 4     G         0.01911173   0.5024774      0.006569063
```


# Question 2: A real business cycle model with energy price shocks (5 points)

Expected discounted utility of the representative household:
\begin{equation}
  U = E_0\left[\sum_{t=0}^\infty\beta_t\frac{C_t^{1-\sigma}}{1-\sigma}+\theta \log(1-N_t)\right]
\end{equation}
subject to
\begin{equation}
  C_t + K_{t+1}+P_tEN_t \leq A_tK_t^\alpha N_t^\gamma EN_t^{1-\alpha-\gamma}+(1-\delta)K_t
\end{equation}

## (a) 
# Question 3: Understanding impulse responses and model simulation (total of 8 points)

Set up the Lagrange System:
$$L = E_t \left[ 
\begin{array} \alpha = a\\ b=
\end{array} 
\right]$$
