//
//  CGRect.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics

extension CGRect {
	
	public var center: CGPoint {
		CGPoint(x: midX, y: midY)
	}
	
	public init(center: CGPoint, size: CGSize) {
		self.init(origin: CGPoint(x: center.x - size.width/2, y: center.y - size.height/2), size: size)
	}
	
	public func withAspectRatio(_ ratio: CGFloat) -> CGRect {
		CGRect(center: center, size: CGSize(aspectRatio: ratio, maxSize: size))
	}
	
	public init(origin: CGPoint, center: CGPoint) {
		let size = CGSize(width: (center.x - origin.x) * 2, height: (center.y - origin.y) * 2)
		self.init(origin: origin, size: size)
	}
	
	public var topLeft: CGPoint {
		CGPoint(x: minX, y: minY)
	}
	
	public var topMid: CGPoint {
		CGPoint(x: midX, y: minY)
	}
	
	public var topRight: CGPoint {
		CGPoint(x: maxX, y: minY)
	}
	
	public var midRight: CGPoint {
		CGPoint(x: maxX, y: midY)
	}
	
	public var bottomRight: CGPoint {
		CGPoint(x: maxX, y: maxY)
	}
	
	public var bottomMid: CGPoint {
		CGPoint(x: midX, y: maxY)
	}
	
	public var bottomLeft: CGPoint {
		CGPoint(x: minX, y: maxY)
	}
	
	public var midLeft: CGPoint {
		CGPoint(x: minX, y: midY)
	}
	
}
