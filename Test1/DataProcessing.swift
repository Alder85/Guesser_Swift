//
//  DataProcessing.swift
//  Test1
//
//  Created by DEAN, JOSHUA on 9/18/15.
//  Copyright © 2015 Josh. All rights reserved.
//

import Foundation

let defaults = NSUserDefaults.standardUserDefaults()
let nolevel = -42.0

func storeDouble(name: String, value: Double)
{
    defaults.setValue(String(value), forKey: name);
    defaults.synchronize()
}

func retrieveDouble(name: String) -> Double?
{
    if let potatoe = defaults.valueForKey(name)
    {
        return potatoe.doubleValue
    }
    return nolevel
}