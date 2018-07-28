//
//  CGRect.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics

public extension CGRect {
	public var center: CGPoint {
		return CGPoint(x: midX, y: midY)
	}
	
	public init(center: CGPoint, size: CGSize) {
		self.init(origin: CGPoint(x: center.x - size.width/2, y: center.y - size.height/2), size: size)
	}
	
	public func withAspectRatio(_ ratio: CGFloat) -> CGRect {
		return CGRect(center: center, size: CGSize(aspectRatio: ratio, maxSize: size))
	}
	
	public init(origin: CGPoint, center: CGPoint) {
		let size = CGSize(width: (center.x - origin.x) * 2, height: (center.y - origin.y) * 2)
		self.init(origin: origin, size: size)
	}
	
	var topLeft: CGPoint {
		return CGPoint(x: minX, y: minY)
	}
	
	var topMid: CGPoint {
		return CGPoint(x: midX, y: minY)
	}
	
	var topRight: CGPoint {
		return CGPoint(x: maxX, y: minY)
	}
	
	var midRight: CGPoint {
		return CGPoint(x: maxX, y: midY)
	}
	
	var bottomRight: CGPoint {
		return CGPoint(x: maxX, y: maxY)
	}
	
	var bottomMid: CGPoint {
		return CGPoint(x: midX, y: maxY)
	}
	
	var bottomLeft: CGPoint {
		return CGPoint(x: minX, y: maxY)
	}
	
	var midLeft: CGPoint {
		return CGPoint(x: minX, y: midY)
	}
	
}
