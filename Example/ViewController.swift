//
//  ViewController.swift
//  Example
//
//  Created by Arnold Plakolli on 4.5.21.
//

import UIKit
import CGMath

class ViewController: UIViewController {

  @Clamped(min: 5, max: 15) var value: Int = 10
  @Clamped(min: 10, max: 20) var anotherValue: Double = 15
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    value = 20
    anotherValue = 5
    
    print(value)
    print(anotherValue)
  }

}

