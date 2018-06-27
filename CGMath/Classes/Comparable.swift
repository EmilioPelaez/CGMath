//
//  Comparable.swift
//  CGMath
//
//  Created by Emilio Peláez on 26/6/18.
//

import Foundation

public func clamp<T: Comparable>(value: T, min: T, max: T) -> T {
	return Swift.max(min, Swift.min(max, value))
}
