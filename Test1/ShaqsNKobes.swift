//
//  ShaqsNKobes.swift
//  Test1
//
//  Created by WENDOLEK, CONNOR on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation
import Darwin

func calculateShaqs(guesses: Int, level: Int) -> Int
{
    var shaqs = 0
    shaqs = level - guesses
    if guesses == 1
    {
        shaqs = shaqs * 2
    }
    return shaqs
}

func generateNumber(level: UInt32) -> Int
{
    var number = 0
    number = Int(arc4random_uniform(level))
    number++
    return number
}

func calculateGuess(realnumber: Int, guessnumber: Int) -> String
{
    var adjust = "Correct!"
    if guessnumber > realnumber
    {
        adjust = "Lower"
    }
    if guessnumber < realnumber
    {
        adjust = "Higher"
    }
    return adjust
}

func getAllDaShaqs() -> Double
{
    var shaqamount = retrieveDouble("Shaq")
    if shaqamount == -42.0
    {
        shaqamount = 0.0
    }
    return shaqamount!
}








