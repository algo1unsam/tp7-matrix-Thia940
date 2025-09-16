object morfeo {
	var transporteActual = camion
	var pesoBase = 90

	method peso() = pesoBase + transporteActual.peso()

	method transporte(nuevoTransporte) {
		transporteActual = nuevoTransporte
	}

	method transporte() = transporteActual
}

object camion {
	var cantidadAcoplados = 1

	method peso() = cantidadAcoplados * 500

	method acoplados(cantidad) {
		cantidadAcoplados = cantidad
	}
}

object monopatin {
	method peso() = 1
}

object puente {
	method dejarPasar(mensajero) = mensajero.peso() <= 1000
}

object paquete {
	var pagado = false
	var destinoElegido = puente

	method pagar() {
		pagado = true
	}

	method pago(valor) {
		pagado = valor
	}

	method estaPago() = pagado

	method destino(unDestino) {
		destinoElegido = unDestino
	}

	method puedeSerEntregadoPor(mensajero) =
		pagado && destinoElegido.dejarPasar(mensajero)
}

