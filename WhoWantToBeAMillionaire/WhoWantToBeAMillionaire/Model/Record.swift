//
//  Record.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

struct Record: Codable {
    let date: Date
    let cashPrize: Int
    let percentOfCorrectAnswers: Double
}
