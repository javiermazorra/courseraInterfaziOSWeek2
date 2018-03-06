//
//  FinishViewController.swift
//  PizzaMakerIOS
//
//  Created by Javier Mazorra Rodríguez on 6/3/18.
//  Copyright © 2018 jmazorra. All rights reserved.
//

import UIKit

class FinishViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
  }
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(true)
    self.navigationItem.hidesBackButton = true
    
  }
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  @IBAction func fin(_ sender: Any) {
    self.navigationController?.popToRootViewController(animated: true)
  }
}

