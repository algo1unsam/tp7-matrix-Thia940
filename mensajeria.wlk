import mensajeros.*

object mensajeria {
	
	var empleados = []

	method contratar(unMensajero) {
		empleados.add(unMensajero)
	}

	method despedir(unMensajero) {
		empleados.remove(unMensajero)
	}

	method despedirATodos() {
		empleados.clear()
	}

	method esGrande() = empleados.size() > 2

	method puedeEntregarPrimero(paquete) =
		empleados.isEmpty().not() && paquete.puedeSerEntregadoPor(empleados.first())

	method pesoUltimo() =
		empleados.last().peso()
}
