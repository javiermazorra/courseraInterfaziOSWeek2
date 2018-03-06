//
//  IngredientsSelectionViewController.swift
//  pizzaMaker
//
//  Created by Javier Mazorra Rodriguez on 6/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class IngredientsSelectionViewControllerViewController: UIViewController {
 
  @IBOutlet weak var switchPepperoni: UISwitch!
  @IBOutlet weak var switchCebolla: UISwitch!
  @IBOutlet weak var switchAnchoas: UISwitch!
  @IBOutlet weak var switchPinya: UISwitch!
  @IBOutlet weak var switchAceituna: UISwitch!
  @IBOutlet weak var switchJamon: UISwitch!
  @IBOutlet weak var switchSalchicha: UISwitch!
  @IBOutlet weak var switchPavo: UISwitch!
  @IBOutlet weak var switchPimiento: UISwitch!
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    PizzaOptions.shared.pizzaIngredients.removeAll()
    
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func `continue`(_ sender: Any) {
    
    if switchPepperoni.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Pepperoni")
    }
    if switchCebolla.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Cebolla")
    }
    if switchAnchoas.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Anchoas")
    }
    if switchPinya.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Piña")
    }
    if switchAceituna.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Aceitunas")
    }
    if switchJamon.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Jamón")
    }
    if switchSalchicha.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Salchichas")
    }
    if switchPavo.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Pavo")
    }
    if switchPimiento.isOn {
      PizzaOptions.shared.pizzaIngredients.append("Pimiento")
    }
    
    if PizzaOptions.shared.pizzaIngredients.count == 0 || PizzaOptions.shared.pizzaIngredients.count > 5 {
      let alert = UIAlertController(title: "Error", message: "Debe elegir entre 1 y 5 ingredientes para su pizza", preferredStyle: .alert)
      alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default,handler: nil))
      self.present(alert, animated: true, completion: nil)
    } else {
      performSegue(withIdentifier: "showConfirmation", sender: sender)
    }
  }
}
