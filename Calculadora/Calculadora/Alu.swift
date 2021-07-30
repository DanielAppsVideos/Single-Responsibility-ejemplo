//
//  Alu.swift
//  Calculadora
//
//  Created by danielapps on 12/07/21.
//
enum AluOperation{
    case add, diff, div, mult
}
import Foundation
class Alu{
    
    // let result = alu.performOperation(op1:val1,op2:val2, operation:operation)
    func performOperation(op1:Double, op2:Double, operation:AluOperation)->Double{
        
        switch operation {
        case .add:
            return op1 + op2
        case .diff:
            return op1 - op2
        case .mult:
            return op1 * op2
        case .div:
            return op1/op2
        }
        
    }
}
