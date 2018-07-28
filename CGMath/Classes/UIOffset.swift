//
//  UIOffset.swift
//  CGMath
//
//  Created by Emilio Peláez on 27/7/18.
//

import Foundation

extension UIOffset {
	
	public var asPoint: CGPoint {
		return convert()
	}
	
	public var asVector: CGVector {
		return convert()
	}
	
}
