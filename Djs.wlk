// Berghain

object berghain {
	var patova 
	
	method patova(nuevoPatova){
		patova = nuevoPatova
	}
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
	method energia(){
		return energia
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = null}
	}
	
	method bailar(nuevaEnergia,nuevaDiversion){
		energia += nuevaEnergia
		diversion += nuevaDiversion
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
	method energia(){
		return energia
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = null}
	}
	method bailar(nuevaEnergia,nuevaDiversion){
		energia += nuevaEnergia
		diversion += nuevaDiversion
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
	method energia(){
		return energia
	}
	method cambiarDePista(nuevaPista){
		if (berghain.patova().dejarPasar(self)){
			pista.quitarPersona(self)
			nuevaPista.agregarPersona(self)
			pista = nuevaPista
		} else {pista = null}
	}
	method bailar(nuevaEnergia,nuevaDiversion){
		energia += nuevaEnergia
		diversion += nuevaDiversion
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
	const energia = -60
	const diversion = 120
	
	method obtenerEnergia(persona){
		return energia
	}
	method obtenerDiversion(persona){
		return diversion
	}
}

object marcelDettman {
	const diversion = 1000
	method obtenerEnergia(persona){
		return -(persona.energia())
	}
	method obtenerDiversion(persona){
		return diversion
	}
}

object tommyMunioz {
	const energia =-80
	const diversion = 0
	method obtenerEnergia(persona){
		return energia
	}
	method obtenerDiversion(persona){
		return diversion
	}
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
	
	method pasarMusica(){
		audiencia.map({persona => persona.bailar(-40,30)})
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
	method pasarMusica(){
		audiencia.map({persona => persona.bailar(dj.obtenerEnergia(persona),dj.obtenerDiversion(persona))})
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
	method pasarMusica(){
		
	}
	
}