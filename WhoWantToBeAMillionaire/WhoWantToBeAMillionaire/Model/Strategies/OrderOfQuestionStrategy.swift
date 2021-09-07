//
//  OrderOfQuestionStrategy.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

protocol OrderOfQuestionsStrategy {
    func getQuestions() -> [Question]
}
