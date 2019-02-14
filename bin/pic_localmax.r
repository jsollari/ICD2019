#autor:      Joao Sollari Lopes
#local:      INE, Lisboa
#Rversion:   3.2.3
#criado:     10.07.2017
#modificado: 13.02.2019

#based on https://en.wikipedia.org/wiki/File:Local_maximum.png
f <- function(x,y){
    exp(1)^(-(x^2+y^2))+2*exp(1)^(-((x-1.5)^2+(y-1.5)^2))
}

dev.new(height=4,width=5)
par(mar=c(0.2,0.2,0.2,0.2))

x <- seq(-2,4,len=50)
y <- seq(-2,4,len=50)
z <- outer(x,y,f)
persp(x,y,z,phi=20,theta=30,d=5,expand=0.5,box=FALSE)
