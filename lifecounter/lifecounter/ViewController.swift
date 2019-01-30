//
//  ViewController.swift
//  lifeScoreer
//
//  Created by JuAn Oh on 1/25/19.
//  Copyright © 2019 JuAn Oh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    var player1Score = 20
    var player2Score = 20
    var player3Score = 20
    var player4Score = 20
    
    @IBAction func plus(_ sender: UIButton) {
        if (sender.tag == 3) {
            player1Score += 1
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 7) {
            player2Score += 1
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 11) {
            player3Score += 1
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 15) {
            player4Score += 1
            gameResult(player: player4Score, playerName: "Player4")
        }
    }
    
    @IBAction func minus (_ sender: UIButton) {
        if (sender.tag == 4) {
            player1Score -= 1
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 8) {
            player2Score -= 1
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 12) {
            player3Score -= 1
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 16) {
            player4Score -= 1
            gameResult(player: player4Score, playerName: "Player4")
        }
    }
    
    @IBAction func plusFive (_ sender: UIButton) {
        if (sender.tag == 2) {
            player1Score += 5
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 6) {
            player2Score += 5
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 10) {
            player3Score += 5
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 14) {
            player4Score += 5
            gameResult(player: player4Score, playerName: "Player4")
        }
    }
    
    @IBAction func minusFive (_ sender: UIButton) {
        if (sender.tag == 1) {
            player1Score -= 5
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 5) {
            player2Score -= 5
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 9) {
            player3Score -= 5
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 13) {
            player4Score -= 5
            gameResult(player: player4Score, playerName: "Player4")
        }
    }
    
    func gameResult(player: Int, playerName: String) {
        if player <= 0 {
            let alert = UIAlertController(title: "Game Result", message: "Congratulations \(playerName) won!", preferredStyle: .alert)
            let cancel = UIAlertAction(title: "Re-Start", style: .cancel, handler: nil)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
            player1Score = 20
            player2Score = 20
            player3Score = 20
            player4Score = 20
        }
        player1.text = String(player1Score)
        player2.text = String(player2Score)
        player3.text = String(player3Score)
        player4.text = String(player4Score)
    }
}

