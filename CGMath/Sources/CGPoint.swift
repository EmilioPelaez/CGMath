//
//  CGPoint.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics
#if canImport(UIKit)
import UIKit
#endif

extension CGPoint {
	
	public init(direction: CGVector, magnitude: CGFloat) {
		let normalized = direction.normalized
		self.init(x: normalized.dx * magnitude, y: normalized.dy * magnitude)
	}
	
	public var asSize: CGSize {
		convert()
	}
	
	public var asVector: CGVector {
		convert()
	}
	
	#if canImport(UIKit)
	public var asOffset: UIOffset {
		convert()
	}
	#endif
	
}
