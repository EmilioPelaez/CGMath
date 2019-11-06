//
//  UIGeometry.swift
//  CGMath
//
//  Created by Emilio Peláez on 27/7/18.
//

import UIKit

extension UIOffset: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0]
		self.init(horizontal: floatList[0], vertical: floatList[1])
	}
	
	public var floatList: [CGFloat] {
		get {
			return [horizontal, vertical]
		}
		set {
			self.horizontal = newValue[0]
			self.vertical = newValue[1]
		}
	}
}

extension UIEdgeInsets: CGFloatListRepresentable {
	public init(floatList: [CGFloat]) {
		let floatList = floatList + [0, 0, 0, 0]
		self.init(top: floatList[0], left: floatList[1], bottom: floatList[2], right: floatList[3])
	}
	
	public var floatList: [CGFloat] {
		get { return [top, left, bottom, right] }
		set {
			self.top = newValue[0]
			self.left = newValue[1]
			self.bottom = newValue[2]
			self.right = newValue[3]
		}
	}
}
