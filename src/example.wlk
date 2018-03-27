object pepe 
{
	
	var categoria = gerente
	var faltaAcum = 0
	var presentismo = presentismoBono
	var resultado = resultadoBonoPorcentaje
	
	method cambiarCategoria (nuevaCategoria)
	{
		categoria = nuevaCategoria
	}
	
	method cambiarResultado (nuevoResultado)
	{
		resultado = nuevoResultado	
	}
	
	method sueldo()
	{
		return categoria.neto() + presentismo.asistencia(faltaAcum) + resultado.bonoSobreNeto(categoria.neto())
	}
	
	method falta(falta)
	{
		faltaAcum = falta 
		
		if (faltaAcum>1)
		{
		presentismo = sinPresentismo
		}
	}
}

object gerente 
{	
	method neto() = 1000
}

object cadete
{
	method neto() = 1500	
}

object presentismoBono 
{
	method asistencia(falta)
	{
		if (falta== 0)
		{
			return 100
		}
		else if (falta == 1)
			{
				return 50
			}
			else 
			return 0
		
	}		
}

object sinPresentismo
{
	method asistencia(falta)
	{
		return 0
	}
}

object resultadoBonoPorcentaje 
{
	method bonoSobreNeto (netoBono)
	{
		return netoBono * 0.10
	}
}

object resultadoBonoFijo 
{
	method bonoSobreNeto (netoBono)
	{
		return 80
		
	}
}

object resultadoBonoNada 
{
	method bonoSobreNeto (netoBono)
	{
		return 0		
	}
}