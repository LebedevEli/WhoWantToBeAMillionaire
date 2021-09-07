//
//  Game.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

final class Game {
    static let shared = Game()
    
    var gameSession: GameSession?
    
    private(set) var records: [Record] {
        didSet {
            recordCaretaker.save(record: self.records)
        }
    }
    
    var difficulty: Difficulty = .sequential
    
    var questions: [Question] {
        didSet {
            questionsCareTaker.save(questions: self.questions)
        }
    }
    
    private let recordCaretaker = RecordCaretaker()
    private let questionsCareTaker = QuestionsCaretaker()
    
    private init() {
        self.records = self.recordCaretaker.retrieveRecords()
        self.questions = self.questionsCareTaker.retrieveQuestions()
    }
    func endGame() {
        guard let gameSession = self.gameSession else {return}
        
        let record = Record(date: Date(), cashPrize: gameSession.cashPrize, percentOfCorrectAnswers: gameSession.percentOfCorrectAnswers)
        self.addRecord(record)
        
        self.gameSession = nil
    }
    
    func addRecord(_ record: Record) {
        self.records.append(record)
    }
    
    func addQuestions(_ questions: [Question]) {
        self.questions += questions
    }
}
