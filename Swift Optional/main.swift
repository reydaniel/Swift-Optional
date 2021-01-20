//
//  main.swift
//  Swift Optional
//
//  Created by ReyDaniel on 20/01/21.
//

import Foundation

let someValue = Int()
print(someValue)

// It will output 0.
// However there is another data type in Swift called Optional, whose default value is a null value.
// You can use optional when you want a variable or constant contain no value in it.
// An optional type may contain a value or absent a value (a null value).

//--How to declare an optional in Swift--
// To declare a data types as optional, just append ! or ? to the type.
// If an optional contains a value in it, it returns value as Optional<value>, if not it returns nil.

var someOpt: Int?
var someAnotherOpt: Int!
print(someOpt)
print(someAnotherOpt)

//--Assigning and accessing a value from an optional
let optValue: Int? = 5
print(optValue)
print(optValue!)

// Printing the optional as print(optValue) doesn't give you 5 but Optional(5).
// In order to access the <Value> from it, we need a mechanism called unwrapping.
// To unwrap an optional, just append ! character at the end of the variable/constant.
// However, remember, this kind of unwrapping mechanism should only be used when you are certain
// that the optional will sure have a value when you access it.



