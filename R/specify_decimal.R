##### 숫자, 소수점 버림
specify_decimal = function(x, k) {	trimws(format(round(x, k), nsmall=k))	}
specify_decimal = cmpfun(specify_decimal)
