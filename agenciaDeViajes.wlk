//viaje
class PackDeViaje {
    const duracionDias 
    const precioBase
    const beneficioEspecial  = []// "Traslados privados" // "Acceso a salas VIP" //"Seguros adicionales"
    const coordinador 

    const destino

    method duracionDias() = duracionDias
    method coordinador() = coordinador
    method destino() = destino
    method precioBase() = precioBase
    method beneficioEspecial() = beneficioEspecial

    method esPremium() {}

    method valorFinal() {}

}


class PackNacional inherits PackDeViaje {
    //destino = provincia
    const listaDeActividades = [] //["string"]
    //coordinador
   

}

class PackInternacional inherits PackDeViaje{
    // desstino = pais
    var cantEscala 

    method esDeInteres(pais) = true // or false
    //coordinador


}

object coordinador{
    var cantDeViajesRealizados = 0
    const aniosDeExperencia = 0 
    var rol = "guia"  // o asistn log, o acomp | puede cambiar

    method estaMotivado() = true //or false  
    
    method cambiarRol(nuevoRol) {
        rol = nuevoRol
        } 
        //si no es uno de los 3 nombrados lanzar una EXCEPCION

    
}

object beneficiosEspeciales{
    var tipo  = "Traslados privados" // "Acceso a salas VIP" //"Seguros adicionales"
    var costo = 0
    method costo () = costo
    method estaVigente() = true // or false

}


class PackProvincial inherits PackNacional{
    override method esPremium(){}

    override method precioBase(){}
}