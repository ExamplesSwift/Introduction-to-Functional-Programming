import UIKit


import Foundation

// Implement a program to check it DNI is correct

let dni = "2345234"

//func checkDni(dni: String) -> Bool {
  let letters: [Character] = ["T", "R", "W", "A", "G", "M", "Y", "F", "P", "D", "X", "B", "N", "J", "Z", "S", "Q", "L"]
  
//var dniArray = Array(dni.character)


var dniArray = Array(dni.character)



//  if dniArray.count == 8 {
//    dniArray.insert("0", at: 0)
//  }
//
//  if dniArray.count != 9 {
//    return false
//  }
//
//  let dniNumber = String(dniArray[0...7])
//
//  guard let number = Int(dniNumber) else {
//    return false
//  }
//
//  let mod = number % 23
//  let letter = letters[mod]
//
//  if dniArray[8] != letters {
//    return false
//  }
//
//  return true
//}

//checkDni(dni: "7124223L")
