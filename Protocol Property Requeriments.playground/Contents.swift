//: Playground - noun: a place where people can play

import UIKit

protocol SomeProtocol {
    var mustBeSetteable : Int { get set }
    var doestNotNeedToBeSetteable : Int { get }
    static var typePropertyCanBeSetteable : Bool { get set }
}


protocol VisaRequeriments {
    var visaNumber : Int { get }
    static var hasCriminalHistory : Bool { get }
}

struct VisaApplication : VisaRequeriments {
    
    var visaNumber: Int
    static let hasCriminalHistory: Bool = false
    
    var applicationName : String
    
    func visaInfo() -> String {
        return "The application name : \(applicationName) and visaNumber: \(visaNumber)"
    }
}

var oliversApplication : VisaApplication  = VisaApplication(visaNumber: 213214324, applicationName: "Oliver")

oliversApplication.visaInfo()