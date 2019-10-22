class Plaga{
	var property poblacion
	method trasmiteEnfermedades(){
		return poblacion >= 10
	}
}
class Cucaracha inherits Plaga {
	var property pesoPromedio
	method nivelDeDanio(){
		return poblacion/2
	}
	override method trasmiteEnfermedades(){
		return super() and pesoPromedio >= 10
	}
	method atacar(unElemento){
		poblacion += (poblacion*0.1)
		pesoPromedio += 2
		unElemento.recibeUnAtaque(self)
	}
}
class Pulgas inherits Plaga {
	method nivelDeDanio(){
		return poblacion*2
	}
	method atacar(unElemento){
		poblacion += (poblacion*0.1)
		unElemento.recibeUnAtaque(self)
	}

}
class Garrapata inherits Plaga {
	method nivelDeDanio(){
		return poblacion*2
	}
	method atacar(unElemento){
		poblacion += (poblacion*0.2)
		unElemento.recibeUnAtaque(self)
	}
}
class Mosquitos inherits Plaga {
	method nivelDeDanio(){
		return poblacion
	}
	override method trasmiteEnfermedades(){
		return super() and poblacion % 3 == 0
	}
	method atacar(unElemento){
		poblacion += (poblacion*0.1)
		unElemento.recibeUnAtaque(self)
	}
}