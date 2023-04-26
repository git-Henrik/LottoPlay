//
//  MLMultiArray.swift
//  LottoPlay
//
//  Created by Davin Henrik on 4/26/23.
//
import CoreML
import SwiftUI

extension MLMultiArray {
    func toArray() -> [NSNumber] {
        let count = self.count
        let ptr = UnsafeMutablePointer<NSNumber>(OpaquePointer(self.dataPointer))
        let buffer = UnsafeBufferPointer(start: ptr, count: count)
        return Array(buffer)
    }
}
