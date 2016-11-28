// Assignment: Un velocímetro de un automóvil digital

import UIKit

enum Velocidades : Int {
    case Apagado = 0
    case VelocidadBaja = 20
    case VelocidadMedia = 50
    case VelocidadAlta = 120
    
    init( velocidadInicial: Velocidades ) {
        self = velocidadInicial
    }
}

class Auto {
    
    var velocidad : Velocidades
    
    init() {
        velocidad = .Apagado
    }
    
    func cambioDeVelocidad() -> (actual: Int, velocidadEnCadena: String) {
        
        switch velocidad {
        case .Apagado:
            let estadoAcutal = (velocidad.rawValue, "Apagado")
            velocidad = .VelocidadBaja
            return estadoAcutal
        case .VelocidadBaja:
            let estadoActual = (velocidad.rawValue, "Velocidad baja")
            velocidad = .VelocidadMedia
            return estadoActual
        case .VelocidadMedia:
            let estadoActual = (velocidad.rawValue, "Velocidad media")
            velocidad = .VelocidadAlta
            return estadoActual
        default:
            let estadoActual = (velocidad.rawValue, "Velocidad alta")
            velocidad = .VelocidadMedia
            return estadoActual
        }
        
    }
    
}

var auto = Auto()

for i in 1...20 {
    let output = auto.cambioDeVelocidad()
    print("\(output.actual), \(output.velocidadEnCadena)")
}
