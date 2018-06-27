//
//  CGGeometry.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import CoreGraphics

extension CGPoint: DoubleListRepresentable {
	public init(doubleList: [Double]) {
		self.init(x: doubleList[0], y: doubleList[1])
	}
	
	public var doubleList: [Double] {
		get {
			return [Double(x), Double(y)]
		}
		set {
			self.x = CGFloat(newValue[0])
			self.y = CGFloat(newValue[1])
		}
	}
}

extension CGSize: DoubleListRepresentable {
	public init(doubleList: [Double]) {
		self.init(width: doubleList[0], height: doubleList[1])
	}
	
	public var doubleList: [Double] {
		get {
			return [Double(width), Double(height)]
		}
		set {
			self.width = CGFloat(newValue[0])
			self.height = CGFloat(newValue[1])
		}
	}
}

extension CGRect: DoubleListRepresentable {
	public init(doubleList: [Double]) {
		self.init(x: doubleList[0], y: doubleList[1], width: doubleList[2], height: doubleList[3])
	}
	
	public var doubleList: [Double] {
		get { return origin.doubleList + size.doubleList }
		set {
			self.origin = CGPoint(doubleList: newValue)
			self.size = CGSize(width: newValue[2], height: newValue[3])
		}
	}
}

extension CGVector: DoubleListRepresentable {
	public init(doubleList: [Double]) {
		self.init(dx: doubleList[0], dy: doubleList[1])
	}
	
	public var doubleList: [Double] {
		get {
			return [Double(dx), Double(dy)]
		}
		set {
			self.dx = CGFloat(newValue[0])
			self.dy = CGFloat(newValue[1])
		}
	}
}
