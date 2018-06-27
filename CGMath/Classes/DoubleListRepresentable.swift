//
//  DoubleListRepresentable.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import Foundation

public protocol ExpressibleByDoubleListLiteral {
	init(doubleList: [Double])
}

public protocol DoubleListConvertible {
	var doubleList: [Double] { get set }
}

public typealias DoubleListRepresentable = ExpressibleByDoubleListLiteral & DoubleListConvertible

extension DoubleListConvertible {
	var magnitude: Double {
		return sqrt(doubleList.reduce(0) { $0 + $1 * $1 })
	}
	
	/*
	var normalized: Self {
		let magnitude = self.magnitude
		let array = doubleList.map { $0 / magnitude }
		return type(of: self).init(doubleList: array)
	}
	*/
	
	mutating func normalize() {
		let magnitude = self.magnitude
		doubleList = doubleList.map { $0 / magnitude }
	}
	
}

public func lerp<T: DoubleListRepresentable>(start: T, end: T, progress: Double) -> T {
	return T(doubleList: zip(start.doubleList, end.doubleList).map { lerp(start: $0, end: $1, progress: progress) })
}

public func +<T: DoubleListRepresentable>(lhs: T, rhs: T) -> T {
	return T(doubleList: zip(lhs.doubleList, rhs.doubleList).map(+))
}

public func -<T: DoubleListRepresentable>(lhs: T, rhs: T) -> T {
	return T(doubleList: zip(lhs.doubleList, rhs.doubleList).map(-))
}

public func *<T: DoubleListRepresentable>(lhs: T, rhs: Double) -> T {
	return T(doubleList: lhs.doubleList.map { $0 * rhs })
}

public func /<T: DoubleListRepresentable>(lhs: T, rhs: Double) -> T {
	return T(doubleList: lhs.doubleList.map { $0 / rhs })
}

public func += <T: DoubleListRepresentable>(lhs: inout T, rhs: T) {
	lhs.doubleList = zip(lhs.doubleList, rhs.doubleList).map(+)
}

public func -= <T: DoubleListRepresentable>(lhs: inout T, rhs: T) {
	lhs.doubleList = zip(lhs.doubleList, rhs.doubleList).map(-)
}

public func *= <T: DoubleListRepresentable>(lhs: inout T, rhs: Double) {
	lhs.doubleList = lhs.doubleList.map { $0 * rhs }
}

public func /= <T: DoubleListRepresentable>(lhs: inout T, rhs: Double) {
	lhs.doubleList = lhs.doubleList.map { $0 / rhs }
}
