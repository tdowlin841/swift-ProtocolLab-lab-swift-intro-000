//
//  BankVault.swift
//  Protocols
//
//  Created by Papa Roach on 8/8/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//


class BankVault {
    
    let name: String
    let address: String
    var amount: Double = 0.0

    init(name: String, address: String) {
        self.name = name
        self.address = address
    }
}

protocol ProvideAccess {
    func allowEntryWithPassword(password : [Int]) -> Bool
    }
    
extension BankVault: ProvideAccess {
    func allowEntryWithPassword(password: [Int]) -> Bool {
    
    let otherNumbers = [password[0], password[2], password[4], password [6], password[8] ]
    let evenNumbers = [2, 4, 6, 8,]
    
    if password == [] {
        if password.count > 10 {
            return false
        }
    } else {
        for number in otherNumbers {
            for digit in evenNumbers {
                if number == digit {
                    return true
                    }
                }
            }
        }
    return false
    }
}

/*(1) - In the BankVault.swift file, create a protocol named ProvideAccess.
 
 This protocol should require any class/struct that conforms to it to 
 
 implement a function called allowEntryWithPassword which takes in one argument called password of type [Int] (an array of Ints). The function should return a Bool.


(2) - In the BankVault.swift file, below where you created the ProvideAccess protocol - create an extension on the BankVault class. 
 
 In that extension, it should conform to the ProvideAccess protocol. 
 
 In your implementation of the allowEntryWithPassword(_:) function, you should adhere to the following rules:
 If the person calling on this function doesn't enter in any digits (empty array), then we should return false.
 
If the total numbers of digits entered (items in the array) exceed 10, then we should return false.
 
In order to allow access (return true), every other digit (starting with the first digit) must be even.
 
 The first digit entered is the first element in the array.
 

There are tests in the BankVaultTests.swift file. Press command + u to run these tests to make sure you implemented the allowEntryWithPassword(_:) function correctly.

 */




