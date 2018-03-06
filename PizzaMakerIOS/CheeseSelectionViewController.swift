//
//  CheeseSelectionViewController.swift
//  pizzaMaker
//
//  Created by Javier Mazorra Rodriguez on 6/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class CheeseSelectionViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  @IBOutlet weak var cheesePicker: UIPickerView!
  
  var pickerData: [String] = [String]()
  var cheeseSelected: String? = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    cheesePicker.delegate = self
    cheesePicker.dataSource = self
    // Do any additional setup after loading the view, typically from a nib.
    pickerData = ["mozarela", "cheddar", "parmesano", "sin queso"]
    cheesePicker.selectRow(0, inComponent: 0, animated: true)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    cheeseSelected = pickerData[0]
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func `continue`(_ sender: Any) {
    PizzaOptions.shared.cheeseType = cheeseSelected ?? "mozarela"
    performSegue(withIdentifier: "showIngredients", sender: sender)
  }
  
  // The number of rows of data
  func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
    return pickerData.count
  }
  
  // The data to return for the row and component (column) that's being passed in
  func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
    return pickerData[row]
  }
  
  func numberOfComponents(in pickerView: UIPickerView) -> Int {
    return 1
  }
  
  // Catpure the picker view selection
  func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
    // This method is triggered whenever the user makes a change to the picker selection.
    // The parameter named row and component represents what was selected.
    cheeseSelected = pickerData[row]
  }
}


