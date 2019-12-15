### Scale on 0 to 1
scale01 = function(x){(x-min(x))/(max(x)-min(x))}
scale01 = cmpfun(scale01)