//
//  UIEdgeInsets.swift
//  CGMath
//
//  Created by Emilio Peláez on 27/7/18.
//

import UIKit

extension UIEdgeInsets {
	
	var horizontal: CGFloat {
		return left + right
	}
	
	var vertical: CGFloat {
		return top + bottom
	}
	
}
