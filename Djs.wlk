// Berghain

object berghain {
	var patova 
	
	
	method patova() {
		return patova
	}
}

//Personas
object vosLukaz {
	var energia = 150
	var diversion = 70
	const remera = "Blanca"
	const edad = 17
	var pista

	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = NULL}
	}
}

object bianker {
	var energia = 140
	var diversion = 80
	const remera = "Negra"
	const edad = 22
	var pista

	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = NULL}
	}
}

object gonzen {
	var energia = 90 
	var diversion = 15
	const remera = "Negra"
	const edad = 33
	var pista

	method remera(){
		return remera
	}
	method edad(){
		return edad
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = NULL}
	}
}

//Pavota

object rochensen {
	method dejarPasar(persona){
		return (persona.edad() >= 21 )
	}
}


object rodrigsen {
	method dejarPasar(persona){
		return ( persona.remera() == "Negra")
	}
}

object gushtavotruccensen {
	method dejarPasar(persona){
		return false
	}
}

//DJs

object dixon {
	
}

object marcelDettman {
	
}

object tommyMunioz {
	
}


//Pistas

object mainRoom{
	var audiencia = #{}
	
	method quitarPersona(persona){
		audiencia.remove(persona)
	}
	method agregarPersona(persona){
		audiencia.add(persona)
	}
}

object panoramaBar {
	var dj
	var audiencia = #{}
		
	method quitarPersona(persona){
		audiencia.remove(persona)
	}
	method agregarPersona(persona){
		audiencia.add(persona)
	}
}

object darkRoom {
	var audiencia = #{}
		
	method quitarPersona(persona){
		audiencia.remove(persona)
	}
	method agregarPersona(persona){
		audiencia.add(persona)
	}
	
}