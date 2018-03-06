//
//  DoughTypeChooserViewController.swift
//  pizzaMaker
//
//  Created by Javier Mazorra Rodriguez on 5/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class DoughTypeChooserViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  @IBOutlet weak var doughPicker: UIPickerView!
  
  var pickerData: [String] = [String]()
  var doughSelected: String? = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    doughPicker.delegate = self
    doughPicker.dataSource = self
    // Do any additional setup after loading the view, typically from a nib.
    pickerData = ["delgada", "crujiente", "gruesa"]
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)

    doughPicker.selectRow(1, inComponent: 0, animated: true)
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func `continue`(_ sender: Any) {
    PizzaOptions.pizzaSize = doughSelected ?? "crujiente"
    performSegue(withIdentifier: "showCheese", sender: sender)
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
    doughSelected = pickerData[row]
  }
}

