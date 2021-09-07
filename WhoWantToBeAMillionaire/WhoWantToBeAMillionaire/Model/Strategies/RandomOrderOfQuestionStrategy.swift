//
//  RandomOrderOfQuestionStrategy.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

final class RandomOrderOfQuestionStrategy: OrderOfQuestionsStrategy {
    func getQuestions() -> [Question] {
        return Game.shared.questions.shuffled()
    }
}
