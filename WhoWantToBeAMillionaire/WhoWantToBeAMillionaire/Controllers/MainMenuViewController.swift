//
//  MainMenuViewController.swift
//  WhoWantToBeAMillionaire
//
//  Created by Илья Лебедев on 06.09.2021.
//

import UIKit

class MainMenuViewController: UIViewController {
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "StartGameIdentifier":
            guard let destination = segue.destination as? GameViewController else { return }
            let gameSession = GameSession()
            Game.shared.gameSession = gameSession
            destination.delegate = gameSession
        default:
            break
        }
    }
    
}
