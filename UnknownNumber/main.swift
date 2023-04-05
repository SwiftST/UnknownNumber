//
//  main.swift
//  UnknownNumber
//
//  Created by Павел Зубрилов on 27.03.2023.
//

import Foundation

// генерация случайного числа
let randomNumber = UInt8.random(in: 1...250)
print("Компьютер случайным образом загадал число. Вам требуется отгадать его")

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
    } else if userNumber > randomNumber {
        print("Ваш вариант больше загаданного числа")
    } else if userNumber < randomNumber {
        print("Ваш вариант меньше загаданного числа")
    }
} while !isWin

