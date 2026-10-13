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
    method agregarBeneficio(unBeneficio) = beneficioEspecial.add(unBeneficio)
    method quitarBeneficio(unBeneficio) = beneficioEspecial.remove(unBeneficio)

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

class Coordinador{
    var cantDeViajesRealizados = 0
    const aniosDeExperencia = 0 
    var rol = Guia      // Guia // o Asistente logistico, o Acompañante | puede cambiar

    method cantViajesRealizados() = cantDeViajesRealizados

    method estaMotivado() = true // or false
    method rol() = rol
    method cambiarRol(nuevoRol) {
        rol = nuevoRol
        } 
        //si no es uno de los 3 nombrados lanzar una EXCEPCION
   
   
    /* method estaAltamenteCalificado(){
        cantDeViajesRealizados > 20 /*
        and
       ( (self.rol() == Guia and self.estaMotivado() )
        or
        (self.rol() == AsistenteLogistico and self.aniosDeExperiencia >= 3)
        or
        (self.rol() == Acompañante) )
    }*/
    
}


class Guia inherits Coordinador{ 
}

class Asistentelogistico inherits Coordinador{
}

class Acompañante inherits Coordinador{

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