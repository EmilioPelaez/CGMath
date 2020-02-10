//
//  ViewController.swift
//  CGMath
//
//  Created by EmilioPelaez on 06/26/2018.
//  Copyright (c) 2018 EmilioPelaez. All rights reserved.
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
