//
//  Wage.swift
//  WindowShopper
//
//  Created by Tushar Katyal on 17/08/17.
//  Copyright © 2017 Tushar Katyal. All rights reserved.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage:Double ,andPrice price:Double)-> Int{
        
        
        return Int(ceil(price / wage))
    }
}
