//: Playground - noun: a place where people can play

import UIKit

class Celsius {
    var temperatureInCelsius : Double
    
    init(fromFahrenheit fahrenheit:Double) {
        temperatureInCelsius = (fahrenheit-32) / 1.8
    }
    
    init(fromKelvin kelvin : Double) {
        temperatureInCelsius = kelvin - 273.15
    }
    
}

var celsiusFahrenheit = Celsius(fromFahrenheit: 23)
celsiusFahrenheit.temperatureInCelsius

let boilinfPointOfWater = Celsius(fromFahrenheit: 212.0)
boilinfPointOfWater.temperatureInCelsius

let freezingPointOfWater = Celsius(fromKelvin: 273.15)
freezingPointOfWater.temperatureInCelsius

struct CelsiusAlternate {
    func fromFahrenheit (fahrenheit : Double) -> Double {
        return (fahrenheit - 32.0)/1.8
    }
    
    func fromKelvin (kelvin : Double) -> Double {
        return kelvin - 271.15
    }
}

let myTemp = CelsiusAlternate()

myTemp.fromFahrenheit(212.0)
myTemp.fromKelvin(273.15)

struct CelsiusOther {
    static func fromFahrenheit(fahrenheit : Double) -> Double {
        return (fahrenheit - 32.0) / 1.8
    }
}
CelsiusOther.fromFahrenheit(212.0)