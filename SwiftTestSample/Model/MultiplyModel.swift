//
//  MultiplyModel.swift
//  SwiftTestSample
//
//  Created by 竹田隆太郎 on 2024/06/07.
//
import Foundation

protocol MultiplyInterface {
    func multiply(num1: Int,num2: Int) -> Int
}

class MultiplyModel: MultiplyInterface {
    private var num1: Int = 0
    private var num2: Int = 0

    // num1とnum2を乗算した値を返す
    func multiply(num1: Int , num2: Int) -> Int {
        let multiplication = num1 * num2
        return multiplication
    }
}

