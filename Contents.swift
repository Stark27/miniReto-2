//: MiniReto número 2.

import UIKit

enum Velocidades : Int{
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init(velocidadInicial : Velocidades){
        self = velocidadInicial
    }
}


class Auto {
    var velocidad : Velocidades
    
    init(){
        self.velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual : Int, velocidadEnCadena : String){
        let velocidadActual = self.velocidad
        var message : String = ""
        
        if velocidadActual == .Apagado {
            message = "Apagado"
            self.velocidad = .VelocidadBaja
        }else if velocidadActual == .VelocidadBaja{
            message = "Velocidad Baja"
            self.velocidad = .VelocidadMedia
        }else if velocidadActual == .VelocidadMedia {
            message = "Velocidad Media"
            self.velocidad = .VelocidadAlta
        }else if velocidadActual == .VelocidadAlta{
            message = "Velocidad Alta"
            self.velocidad = .VelocidadMedia
        }
        
        return (velocidadActual.rawValue, message)
    }
}


var nuevoAuto = Auto()

var rango = 1...20

for i in rango {
    let tipoVelocidad = nuevoAuto.cambioDeVelocidad()
    var velocidadNum = tipoVelocidad.actual
    var velocidadTexto = tipoVelocidad.velocidadEnCadena
    print("\(velocidadNum), \(velocidadTexto)")
}

