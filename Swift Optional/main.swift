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

//--Explicitly Declaring an Unwrapped Optional
let expValue: Int! = 5
print(expValue)

//--Optional Handling Using IF Statement--
var nilValue: Int?
var contValue: Int! = 0

if nilValue != nil {
    print("It has some value \(nilValue!)")
} else {
    print("Doesn't contain value")
}

if contValue != nil {
    print("It has some value \(contValue!)")
} else {
    print("Doesn't contain value")
}

//--Optional Binding--
// Optional binding helps us to find out whether an oprional contains a value or not.
if let temp = nilValue {
    print("It has some value \(temp)")
} else {
    print("Doesn't contain value")
}

if let temp = contValue {
    print("It has some value \(temp)")
} else {
    print("Doesn't contain value")
}

// In the above program, the code inside if statement executes if the optional conatins a value.
// The let-if statement also automatically unwraps the value and places the unwrapped value in temp constant.
// This technique has major advantage because it doesn't need to forcely unwrap the value.

//--Guard Statement--
func testFunction() {
    let someValue: Int? = 6
    guard let temp = someValue else {
        return
    }
    print("It has some value \(temp)")
}
testFunction()

// In the above program, if it contains a value the guard-let statement automatically unwraps the value and places the unwrapped value in temp constant.

//--Nil-coalescing Operator
// It is defined as (a ?? b). It unwraps an optional "a" and returns it if it contains a value or returns a default value "b" if "a" is nil.
var exNil: Int!
var defaultValue = 8
let unwrappedValue: Int = exNil ?? defaultValue
print(unwrappedValue)

// In the above program, variable exNil is defined optional and contains nil value.
// The nil coalescing operatior fails to unwrap the optional therefore returns defaultValue.

exNil = 10
defaultValue = 8
let unwrappedValueAgain: Int = exNil ?? defaultValue
print(unwrappedValueAgain)

// However, in the above program, optional variable exNil is initialized with value 10.
// The nil-coalescing operator successfully unwraps the value from exNil.
