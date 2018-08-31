object gimenez {
	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
//	var property sueldo = 15000

	var sueldo = 15000
	var totalSueldo = 0
	method sueldo() { return 15000 }
	method sueldo(nuevoValor) { sueldo = nuevoValor }
    method cobrarSueldo() { totalSueldo += sueldo }
    method totalCobrado() { return totalSueldo }
}

object baigorria {
	var deuda = 0
	var dinero = 0
	var cantidadEmpanadasVendidas = 1000
	var montoPorEmpanada = 15
	method venderEmpanada() { cantidadEmpanadasVendidas += 1 }
 	method sueldo() { return  cantidadEmpanadasVendidas * montoPorEmpanada }
    method cobrarSueldo() {
    	if ( self.sueldo() > deuda ) {
    		dinero += self.sueldo() - deuda
    		deuda = 0
         }
   else if ( self.sueldo() < deuda ) {
  	       deuda -= self.sueldo()
  	       dinero = 0
       }	
    }      
    method totalDeuda() { return deuda }
    method totalDinero() { return dinero }
    method gastar(cuanto) {
    	if ( self.totalDinero() > cuanto ) {
    		dinero = dinero - cuanto
    	  }	
        else if ( self.totalDinero() < cuanto) { 	
            deuda +=  cuanto - self.totalDinero()
            dinero = 0
           }
      }
  }
  
        	
object galvan {
	var dinero = 300000
	method dinero() { return dinero }
	method pagarA( empleado ) { dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}
}

