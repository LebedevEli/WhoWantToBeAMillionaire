//
//  SettingsViewController.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var difficultyControl: UISegmentedControl!
    
    private var selectedDifficulty: Difficulty {
        switch self.difficultyControl.selectedSegmentIndex {
        case 0:
            return .sequential
        case 1:
            return .random
        default:
            return .sequential
        }
    }
    
    @IBAction func changeDifficult(_ sender: Any) {
        Game.shared.difficulty = selectedDifficulty
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        difficultyControl.selectedSegmentIndex = Game.shared.difficulty.rawValue
    }
}
