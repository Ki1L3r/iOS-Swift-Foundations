//: Playground - noun: a place where people can play

import UIKit

struct Celsius {
    var temperatureInCelsius : Double
    
    init(_ celsius : Double){
        temperatureInCelsius = celsius
    }
    
    init(celsiusTemp : Double){
        temperatureInCelsius = celsiusTemp
    }
}

let bodyTemperature = Celsius(37.5)
let bodyTemperature1 = Celsius(celsiusTemp: 37.5)