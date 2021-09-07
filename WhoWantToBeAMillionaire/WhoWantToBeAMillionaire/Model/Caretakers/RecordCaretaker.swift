//
//  RecordCaretaker.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import Foundation

final class RecordCaretaker {
    private let encoder = JSONEncoder()
    private let decoder = JSONDecoder()
    
    private let key = "record"
    
    func save(record: [Record]) {
        do {
            let data = try self.encoder.encode(record)
            UserDefaults.standard.set(data, forKey: key)
        } catch {
            print(error)
        }
    }
    
    func retrieveRecords() -> [Record] {
        guard let data = UserDefaults.standard.data(forKey: key) else { return []}
        
        do {
            return try self.decoder.decode([Record].self, from: data)
        } catch {
            print(error)
            return []
        }
    }
}
