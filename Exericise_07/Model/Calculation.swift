//
//  Calculate.swift
//  Exericise_07
//
//  Created by 白石裕幸 on 2021/09/10.
//

import Foundation

protocol Calculation {
    func calculate(val1: Int, val2: Int) -> Int
}

enum Operator: Int {
    case addition, subtraction
}

struct Addition: Calculation {
    func calculate(val1: Int, val2: Int) -> Int {
        val1 + val2
    }
}
struct Subtraction: Calculation {
    func calculate(val1: Int, val2: Int) -> Int {
        val1 - val2
    }
}
