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
    method beneficioVigente() = beneficioEspecial.filter({b=>b.estaVigente()})
    //method agregarBeneficio(unBeneficio) = beneficioEspecial.add(unBeneficio)
    //method quitarBeneficio(unBeneficio) = beneficioEspecial.remove(unBeneficio)

    method esPremium() {}

    method valorFinal() {
        precioBase + self.beneficioVigente().sum({ b => b.costo() })

    }

}


class PackNacional inherits PackDeViaje {
    //destino = provincia
    const listaDeActividades = [] //["string"]
    //coordinador
   

}

class PackInternacional inherits PackDeViaje{
    // desstino = pais
    var cantEscalas = 0
    var esDeInteres = true // or false

    method esDeInteres(pais) = esDeInteres
    //coordinador

    method escalas() = cantEscalas

    override method valorFinal() = super() * 1.20

    override method esPremium() =  esDeInteres and duracionDias > 20 and cantEscalas == 0
}



class Coordinador{
    var cantDeViajesRealizados = 0
    const aniosDeExperencia = 0 
    var rol = Guia      // o "Asistente logistico" o "Acompañante"

    method cantViajesRealizados() = cantDeViajesRealizados

    method estaMotivado() = true // or false
    method rol() = rol
    method cambiarRol(nuevoRol) {
        rol = nuevoRol
        } 
        //si no es uno de los 3 nombrados lanzar una EXCEPCION
    method estaAltamenteCalificado() =
        cantDeViajesRealizados > 20 and
        (
        (self.rol() == Guia and self.estaMotivado()) 
        or
        (self.rol() == Asistentelogistico and aniosDeExperencia >= 3)
        or
        self.rol() == Acompañante
        )
    
}


class Guia inherits Coordinador{ 
}

class Asistentelogistico inherits Coordinador{
}

class Acompañante inherits Coordinador{

}

object beneficiosEspeciales{
    var tipo  = "Traslados privados" // "Acceso a salas VIP" //"Seguros adicionales"
    var costo 
    const vigente
    method costo () = costo
    method estaVigente() = vigente

}

class PackProvincial inherits PackNacional{
    override method esPremium(){ }

    
}