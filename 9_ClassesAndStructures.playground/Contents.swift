//: Playground - noun: a place where people can play

import UIKit

class SomeClass {
    
}

struct SomeStructure {
    
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

let someResolution = Resolution()
let someVideoMode = VideoMode()

print("The width of someResolution is \(someResolution.width)")

print("The width of someVideoMode is \(someVideoMode.resolution.width)")

someVideoMode.resolution.width = 1280
print("The width of someVideoMode is now \(someVideoMode.resolution.width)")

let vga = Resolution(width: 640, height: 480)

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd

cinema.width = 2048
print("cinema is now \(cinema.width) pixels wide")
print("hd is still \(hd.width) piexls wide")

enum CompassPoint {
    case north, south, east, west
}

var currentDirection = CompassPoint.west
let rememberedDirection = currentDirection
currentDirection == .west
if rememberedDirection == .west {
    print("The rememberd direction is still .west")
}

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25.0

let alsoTenEight = tenEighty
alsoTenEight.frameRate = 30.0

print("The frameRate property of tenEight is now \(tenEighty.frameRate)")

if tenEighty === alsoTenEight {
    print("tenEighty and alsoTenEighty refer to the same VideoMode instance")
}

