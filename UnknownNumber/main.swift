//
//  main.swift
//  UnknownNumber
//
//  Created by Павел Зубрилов on 27.03.2023.
//

import Foundation

var oneMoreRound: String?

repeat {
    mainLogic()
    print("Еще один раунд? (y/n)")
    oneMoreRound = readLine()
} while checkAnswer(&oneMoreRound)
print("the end")



