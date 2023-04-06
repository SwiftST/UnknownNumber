//
//  main.swift
//  UnknownNumber
//
//  Created by Павел Зубрилов on 27.03.2023.
//

import Foundation

var oneMoreRound: String?
var randomNumber: UInt8

repeat {
    // генерация случайного числа
    randomNumber = UInt8.random(in: 1...250)
    print("Компьютер случайным образом загадал число. Вам требуется отгадать его")
    mainLogic(number: randomNumber)
    print("Еще один раунд? (y/n)")
    oneMoreRound = readLine()
} while checkAnswer(&oneMoreRound)
print("the end")



