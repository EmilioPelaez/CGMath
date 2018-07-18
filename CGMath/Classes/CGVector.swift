//
//  CGVector.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import Foundation

extension CGVector {
	
	public init(direction: CGVector, magnitude: CGFloat) {
		var direction = direction
		direction.normalize()
		self.init(dx: direction.dx * magnitude, dy: direction.dy * magnitude)
	}
	
	public var asSize: CGSize {
		return CGSize(floatList: floatList)
	}
	
	public var asPoint: CGPoint {
		return CGPoint(floatList: floatList)
	}
	
}
