import objetos.*
import personas.*

object bolichito{
    var objetoEnMostrador = pelota
    var objetoEnVidriera = munieco
    method objetoEnVidriera(unObjetoEnVidriera) {objetoEnVidriera = unObjetoEnVidriera}
    method objetoEnMostrador(unObjetoEnMostrador) {objetoEnMostrador = unObjetoEnMostrador}
    method objetoEnVidriera() {return objetoEnVidriera}
    method objetoEnMostrador(){return objetoEnMostrador}
    method esBrillante(){return objetoEnMostrador.esBrillante() 
    && objetoEnVidriera.esBrillante()}
    method esMonocromatico() = objetoEnMostrador.color() == objetoEnVidriera.color()
    method esEquilibrado() = objetoEnMostrador.peso() > objetoEnVidriera.peso()
    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor 
        || objetoEnVidriera.color() == unColor
    }
    method puedeMejorar() {
        return not self.esEquilibrado() || self.esMonocromatico()
    }
    method puedeOfrecerleAlgo(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    }
}
