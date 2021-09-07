//
//  Quesion.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

struct Question: Codable {
    var question: String = ""
    var answers: [String] = []
    var correctAnswer: Int = 0
    var cashPrize: Int = 100
    
    var resultWhenUseHintCallFriend: String {
        get {
            return "Я думаю, что правильный вариант: \(answers[correctAnswer])"
        }
    }
    
    var resultWhenUseHintAuditoryHelp: [Int] {
        get {
            var resultArray: [Int] = []
            var totalResult = 100
            
            for i in 0..<answers.count {
                var result = 0
                
                if i == correctAnswer {
                    result = Int.random(in: 26...50)
                } else {
                    result = Int.random(in: 1..<25)
                }
                
                totalResult -= result
                
                resultArray.append(result)
            }
            
            if totalResult != 0 {
                resultArray[correctAnswer] += totalResult
            }
            
            return resultArray
        }
    }
        static func getQuestions() -> [Question] {
        return [
        Question(
            question: "Как заканчивается русская поговорка: «Раз на раз…»?",
            answers: [
                "Не меняется",
                "Не приходится",
                "Не перемножается",
                "Не складывается"
            ],
            correctAnswer: 1,
            cashPrize: 100
        ),
        Question(
            question: "Как по-другому называется обойма для патронов?",
            answers: [
                "Магистраль",
                "Универсам",
                "Центр",
                "Магазин"
            ],
            correctAnswer: 3,
            cashPrize: 200
        ),
        Question(
            question: "Что используют в работе воздушные гимнасты?",
            answers: [
                "Трапеция",
                "Треугольник",
                "Ромб",
                "Квадрат"
            ],
            correctAnswer: 0,
            cashPrize: 300
        ),
        Question(
            question: "Назовите столицу Франции",
            answers: [
                "Лондон",
                "Пекин",
                "Париж",
                "Барселона"
            ],
            correctAnswer: 2,
            cashPrize: 400
        ),
        Question(
            question: "Как называют руль автомобиля?",
            answers: [
                "Бублик",
                "Сушка",
                "Баранка",
                "Булка"
            ],
            correctAnswer: 2,
            cashPrize: 500
        ),
        Question(
            question: "Кого нет среди смешариков?",
            answers: [
                "Барана",
                "Свиньи",
                "Коня",
                "Лося"
            ],
            correctAnswer: 2,
            cashPrize: 600
        ),
        Question(
            question: "Как называется порода бесшёрстных кошек?",
            answers: [
                "Зевс",
                "Сфинкс",
                "Аполлон",
                "Аид"
            ],
            correctAnswer: 1,
            cashPrize: 700
        ),
        Question(
            question: "Какой специалист занимается изучением неопознанных летающих объектов?",
            answers: [
                "Уфолог",
                "Уролог",
                "Психиатр",
                "Кинолог"
            ],
            correctAnswer: 0,
            cashPrize: 800
        ),
        Question(
            question: "В какое море впадает река Урал?",
            answers: [
                "Каспийское",
                "Черное",
                "Азовское",
                "Средиземное"
            ],
            correctAnswer: 0,
            cashPrize: 900
        ),
        Question(
            question: "На какую букву начинались фамилии киноактрис, которые с 2000 года ни разу не получили премию Оскар за лучшую женскую роль?",
            answers: [
                "P",
                "W",
                "F",
                "G"
            ],
            correctAnswer: 3,
            cashPrize: 1000
        ),
    ]
    }
}
