//
//  CGGeometry.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics

extension CGPoint: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0]
		self.init(x: floatList[0], y: floatList[1])
	}
	
	public var floatList: [CGFloat] {
		get {
			[x, y]
		}
		set {
			x = newValue[0]
			y = newValue[1]
		}
	}
}

extension CGSize: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0]
		self.init(width: floatList[0], height: floatList[1])
	}
	
	public var floatList: [CGFloat] {
		get {
			[width, height]
		}
		set {
			width = newValue[0]
			height = newValue[1]
		}
	}
}

extension CGRect: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0, 0, 0]
		self.init(x: floatList[0], y: floatList[1], width: floatList[2], height: floatList[3])
	}
	
	public var floatList: [CGFloat] {
		get { origin.floatList + size.floatList }
		set {
			origin = CGPoint(floatList: newValue)
			size = CGSize(width: newValue[2], height: newValue[3])
		}
	}
}

extension CGVector: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0]
		self.init(dx: floatList[0], dy: floatList[1])
	}
	
	public var floatList: [CGFloat] {
		get {
			[dx, dy]
		}
		set {
			dx = CGFloat(newValue[0])
			dy = CGFloat(newValue[1])
		}
	}
}
