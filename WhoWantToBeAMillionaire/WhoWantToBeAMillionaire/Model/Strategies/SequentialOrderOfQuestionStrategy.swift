//
//  SequentialOrderOfQuestionStrategy.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

final class SequentialOrderOfQuestionsStrategy: OrderOfQuestionsStrategy {
    func getQuestions() -> [Question] {
        return Game.shared.questions
    }
}
