//
//  CGPoint.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics

extension CGPoint {
	
	public init(direction: CGVector, magnitude: CGFloat) {
		var direction = direction
		direction.normalize()
		self.init(x: direction.dx * magnitude, y: direction.dy * magnitude)
	}
	
	public var asSize: CGSize {
		return CGSize(floatList: floatList)
	}
	
	public var asVector: CGVector {
		return CGVector(floatList: floatList)
	}
	
}
