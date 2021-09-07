//
//  RecordsViewController.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import UIKit

class RecordsViewController: UIViewController {
    
    @IBOutlet weak var recordsTableView: UITableView!
    
    let dateFormatter: DateFormatter = {
        let df = DateFormatter()
        df.dateStyle = .short
        return df
    } ()
    
    var dateTextCache: [IndexPath: String] = [:]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        recordsTableView.dataSource = self
    }
}

extension RecordsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Game.shared.records.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = recordsTableView.dequeueReusableCell(withIdentifier: "RecordCellIdentifier", for: indexPath)
        let record = Game.shared.records[indexPath.row]
        cell.textLabel?.text = getCellDateText(forIndexPath: indexPath, andDate: record.date)
        cell.detailTextLabel?.text = "Деньги: \(record.cashPrize). Прогресс: \(String(format:"%.2f", record.percentOfCorrectAnswers * 100))%"
        return cell
    }
    
    func getCellDateText(forIndexPath indexPath: IndexPath, andDate date: Date) -> String {
        if let stringDate = dateTextCache[indexPath] {
            return stringDate
        } else {
            let stringDate = self.dateFormatter.string(from: date)
            dateTextCache[indexPath] = stringDate
            return stringDate
        }
    }
}
