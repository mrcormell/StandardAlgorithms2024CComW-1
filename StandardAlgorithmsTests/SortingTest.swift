//
//  SortingTest.swift
//  StandardAlgorithmsTests
//
//  Created by admin on 05/11/2024.
//

import XCTest
@testable import StandardAlgorithms

final class SortingTest: XCTestCase {
    func testBubbleSortWithVariousIntegerArraysReturnsArraysInAscendingOrder() {
        //arrange
        let sorting = Sorting()
        let testCases = [(numbers: [4, 1, 7, 9, 3], expected: [1, 3, 4, 7, 9]),
                         (numbers: [4, 14, 9, 0, 1], expected: [0, 1, 4, 9, 14]),
                         (numbers: [], expected: []),
                         (numbers: [1,2,3], expected: [1,2,3]),
                         (numbers: [1,1,1], expected: [1,1,1])]
        //act
        //assert
        for testCase in testCases {
            let result = sorting.bubbleSort(testCase.numbers)
            XCTAssertEqual(result, testCase.expected)
        }
    }
}
