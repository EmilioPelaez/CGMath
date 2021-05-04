//
//  Clamped.swift
//  CGMath
//
//  Created by Emilio Peláez on 10/2/20.
//

import Foundation

@propertyWrapper
public struct Clamped<Value: Comparable> {
	
	public let min: Value
	public let max: Value
	
	private var value: Value
	
	public init(wrappedValue: Value, min: Value, max: Value) {
		self.value = wrappedValue.clamped(min: min, max: max)
		self.min = min
		self.max = max
	}
	
	public var wrappedValue: Value {
		get { value }
		set { value = newValue.clamped(min: min, max: max) }
	}
}
