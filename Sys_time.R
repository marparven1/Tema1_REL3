t1=Sys.time()
set.seed(123)
datos=rnorm(10000000000000)
mdatos=matrix(datos,ncol=100)
sumCol=apply(mdatos,MARGIN = 2, sum)
t2=Sys.time()
t2-t1



t1=Sys.time()
set.seed(123)
datos=rnorm(10000000000000)
sumCol2= rep(NA,100)
mdatos=matrix(datos,ncol=100)
for (i in 1:100 ) {
sumCol2[i] = sum(mdatos[,i])
}
t2=Sys.time()
t2-t1


library(tidyverse)
t1=Sys.time()
set.seed(1234)
datos=rnorm(10000000000000)
mdatos=matrix(datos,ncol=100)
tdatos=as_tibble(mdatos)
tsuma=tdatos %>% 
  summarise_all(
    .funs=(sum)
  )
t2=Sys.time()
t2-t1