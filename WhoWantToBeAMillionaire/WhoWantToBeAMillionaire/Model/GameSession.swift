//
//  GameSession.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

class GameSession {
    var availabilityHintCallFriend: Bool = true
    var availabilityHintAuditoryHelp: Bool = true
    var availabilityHint50to50: Bool = true
    var countQuestions: Int = Game.shared.questions.count
    var countCorrectAnswers: Observable<Int> = Observable(0)
    var cashPrize: Int = 0
    var percentOfCorrectAnswers: Double {
        get {
            return Double(self.countCorrectAnswers.value) / Double(self.countQuestions)
        }
    }
}

extension GameSession: GameViewControllerDelegate {
    func gameViewController(_ viewController: GameViewController, chooseRightAnswerIn question: Question) {
        self.countCorrectAnswers.value += 1
        self.cashPrize += question.cashPrize
    }
}
