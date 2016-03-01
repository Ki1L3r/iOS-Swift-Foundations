//: Playground - noun: a place where people can play

import UIKit

struct PhotoImage {
    var width: Int = 5
    var height: Int = 8
}
class Photograph {
    var myPhotoImage = PhotoImage()
    var border = false
    var number = 4.1
    var name: String?
}

let anImage = PhotoImage ()
anImage.height

let aPhotograph = Photograph()
print("myPhotoImage \(aPhotograph.myPhotoImage), border: \(aPhotograph.border), number: \(aPhotograph.number) and name: \(aPhotograph.name)")