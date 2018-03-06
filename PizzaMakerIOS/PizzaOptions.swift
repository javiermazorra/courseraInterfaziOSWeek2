//
//  PizzaOptions.swift
//  pizzaMaker
//
//  Created by Javier Mazorra Rodriguez on 6/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import Foundation

class PizzaOptions: NSObject {
  
  static let shared = PizzaOptions.init()
  
  var pizzaSize:String = ""
  var pizzaDough:String = ""
  var cheeseType:String = ""
  var pizzaIngredients:[String] = [String]()
}
