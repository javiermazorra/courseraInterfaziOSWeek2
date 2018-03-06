//
//  ConfirmationViewController.swift
//  PizzaMakerIOS
//
//  Created by Javier Mazorra Rodríguez on 6/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class ConfirmationViewController: UIViewController {
  
  @IBOutlet weak var labelTamanyo: UILabel!
  @IBOutlet weak var labelMasa: UILabel!
  @IBOutlet weak var labelQueso: UILabel!
  @IBOutlet weak var labelIngredientes: UILabel!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    labelTamanyo.text = PizzaOptions.shared.pizzaSize
    labelMasa.text = PizzaOptions.shared.pizzaDough
    labelQueso.text = PizzaOptions.shared.cheeseType
    
    labelIngredientes.text = PizzaOptions.shared.pizzaIngredients[0]
    
    for i in 1..<PizzaOptions.shared.pizzaIngredients.count {
      labelIngredientes.text = labelIngredientes.text! + ", " + PizzaOptions.shared.pizzaIngredients[i]
    }
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func confirmar(_ sender: Any) {
    performSegue(withIdentifier: "showEnd", sender: sender)
  }
}



