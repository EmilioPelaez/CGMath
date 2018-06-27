//
//  FloatingPoint.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import Foundation

public func lerp<T: FloatingPoint>(start: T, end: T, progress: T) -> T {
	return (1 - progress) * start + progress * end
}

public func inverseLerp<T: FloatingPoint>(start: T, end: T, value: T) -> T {
	return (value - start) / (end - start)
}

extension FloatingPoint {
	public func clamp(min: Self, max: Self) -> Self {
		return CGMath.clamp(value: self, min: min, max: max)
	}
	
	public func remap(from fromRange: (start: Self, end: Self), to toRange: (start: Self, end: Self)) -> Self {
		let t = inverseLerp(start: fromRange.start, end: fromRange.end, value: self)
		return lerp(start: toRange.start, end: toRange.end, progress: t)
	}
}
