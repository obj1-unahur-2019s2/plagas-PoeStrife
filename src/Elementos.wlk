class Hogar {
	var property mugre = 0
	var property confort = 0 
	method esBuena()= mugre <= confort/2
	method recibeUnAtaque(plaga){ mugre += plaga.nivelDeDanio() }
}
class Huerta{
	var property capacidadProduccion
	const nivelDeLaHuerta = nivel
	method esBuena() = capacidadProduccion > nivelDeLaHuerta.nivel()
	method recibeUnAtaque(plaga){ 
		capacidadProduccion -= plaga.nivelDeDanio() * 0.1 
		if (plaga.trasmiteEnfermedades()){
			capacidadProduccion -= 10
		}
	}
}
object nivel{
	var property nivel = 500
	method nivel() = nivel
}
class Mascotas{
	var property salud
	method esBuena() = salud >= 250
	method recibeUnAtaque(plaga){ 
		if (plaga.trasmiteEnfermedades()){
			salud -= plaga.nivelDeDanio()
		}
	}
}
class Barrio{
	var property barrio = []
	method agregarElemento(elemento){barrio.add(elemento)}
	method sacarElemento(elemento){barrio.remove(elemento)}
	method esCopado(){
		return barrio.count({elemento => elemento.esBuena()}) > barrio.count({elemento => not (elemento.esBuena())})
	}
}