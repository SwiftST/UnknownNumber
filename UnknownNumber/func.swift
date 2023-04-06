//
//  func.swift
//  UnknownNumber
//
//  Created by Павел Зубрилов on 06.04.2023.
//

import Foundation

// main logiс
func mainLogic (number: UInt8) {
    var isWin = false
    repeat {
        print("Введите ваш вариант числа от 1 до 250")
        // получение значения с клавиатуры
        guard let userNumber = UInt8(readLine() ?? "") else {
            print("Incorrect value")
            continue
        }
        if randomNumber == userNumber {
            print("Вы угадали число")
            isWin = true
        } else if userNumber > randomNumber {
            print("Ваш вариант больше загаданного числа")
        } else if userNumber < randomNumber {
            print("Ваш вариант меньше загаданного числа")
        }
    } while !isWin
}

// check answer
func checkAnswer(_ answer: inout String?) -> Bool {
    let answers = ["y", "n", "yes", "no"]
    while !answers.contains(answer ?? "") {
        print("Incorrect value. Try again")
        answer = readLine()
    }
    guard answer == "y" || answer == "yes" else {
        return false
    }
    return true
}
