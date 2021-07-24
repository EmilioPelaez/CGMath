//
//  UIOffset.swift
//  CGMath
//
//  Created by Emilio Peláez on 27/7/18.
//

#if canImport(UIKit)
import UIKit

extension UIOffset {
	
	public var asPoint: CGPoint {
		convert()
	}
	
	public var asVector: CGVector {
		convert()
	}
	
}
#endif

