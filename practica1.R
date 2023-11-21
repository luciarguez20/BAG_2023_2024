calculadora <- function(a,b,c) 
  {
  if (sqrt(b^-4*a*c) == 0) {
    print("error")
  } else {
    ecuacion <- -b+sqrt(b^2-(4*a*c))/2*a
    print ("ambas soluciones son válidas, x puede valer sol1 y sol2")
    print ("Solo la solucion 1 es válida, x vale sol1")
    print ("Solo la solucion 2 es válida, x vale sol2")
  }
}
 
calculadora(1,2,3) 

### SOLUCIÓN ###
calculadora <- function(a,b,c) 
{
  raiz <- (b)^2 - (4*(a)*(c))
  if (raiz < 0)
  {
    stop("Esta ecuación no tiene solución")
  } else 
  {
    sol1 <- (-(b) + sqrt(b^2-(4*(a)*c)))/(2*(a))
    sol2 <- (-(b) - sqrt(b^2-(4*(a)*c)))/(2*(a))
    test1 <- (a*(sol1)^2) + (b*sol1) + c
    test2 <- (a*(sol2)^2) + (b*sol2) + c
    if (round(test1) == 0 && round(test2) == 0)
    {
      print(paste("Ambas soluciones son válidas. El valor de x puede ser", sol1, "o", sol2))
    } else if (round(test1) == 0 && round(test2) != 0)
    {
      print(paste("Solo la solución 1 es válida, por lo que x solo puede valer", sol1))
    } else if (round(test1) != 0 && round(test2) == 0)
    {
      print(paste("Solo la solución 2 es válida, por lo que x solo puede valer", sol2))
    }
  }
}
    
valores <- calculadora(2,4,2)
valores2 <- calculadora(2,3,2)



