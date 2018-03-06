//
//  SizeChooserViewController.swift
//  pizzaMaker
//
//  Created by Javier Mazorra Rodriguez on 5/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class SizeChooserViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
  @IBOutlet weak var sizePicker: UIPickerView!
  
  var pickerData: [String] = [String]()
  var sizeSelected: String? = ""
  
  override func viewDidLoad() {
    super.viewDidLoad()
    sizePicker.delegate = self
    sizePicker.dataSource = self
    // Do any additional setup after loading the view, typically from a nib.
    pickerData = ["pequeña", "mediana", "grande"]
    sizePicker.selectRow(1, inComponent: 0, animated: true)
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    
    sizeSelected = pickerData[1]
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func `continue`(_ sender: Any) {
    PizzaOptions.shared.pizzaSize = sizeSelected ?? "mediana"
    performSegue(withIdentifier: "showSize", sender: sender)
  }
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

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
    sizeSelected = pickerData[row]
  }
}
