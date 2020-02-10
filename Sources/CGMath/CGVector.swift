//
//  CGVector.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import UIKit

extension CGVector {
	
	public init(direction: CGVector, magnitude: CGFloat) {
		var direction = direction
		direction.normalize()
		self.init(dx: direction.dx * magnitude, dy: direction.dy * magnitude)
	}
	
	public var asSize: CGSize {
		convert()
	}
	
	public var asPoint: CGPoint {
		convert()
	}
	
	public var asOffset: UIOffset {
		convert()
	}
	
}
