//
//  SwiftTestSampleTests.swift
//  SwiftTestSampleTests
//
//  Created by 竹田隆太郎 on 2024/06/07.
//

import XCTest
@testable import SwiftTestSample

class SwiftTestSampleTests: XCTestCase {
    func test_num1とnum2の引数が掛け算されていれば成功() {
        // 前処理
        let multiplyModel = MultiplyModel()
        // 実行
        let result = multiplyModel.multiply(num1: 20, num2: 5)
        // 検証
        XCTAssertEqual(100, result)
    }
}
