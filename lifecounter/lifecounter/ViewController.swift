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
        gameResult.isHidden = true
        
    }
    @IBOutlet weak var player3View: UIView!
    @IBOutlet weak var player4View: UIView!
    @IBOutlet weak var player5View: UIView!
    @IBOutlet weak var player6View: UIView!
    @IBOutlet weak var player7View: UIView!
    @IBOutlet weak var player8View: UIView!
    
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var player5: UILabel!
    @IBOutlet weak var player6: UILabel!
    @IBOutlet weak var player7: UILabel!
    @IBOutlet weak var player8: UILabel!
    @IBOutlet weak var gameResult: UILabel!
    var player1Score = 20
    var player2Score = 20
    var player3Score = 20
    var player4Score = 20
    var player5Score = 20
    var player6Score = 20
    var player7Score = 20
    var player8Score = 20
    var players = 4
    var gameStarted = false;
    @IBAction func addPlayer(_ sender: UIButton) {
        if !gameStarted {
            let newPlayer = players + 1
            if newPlayer <= 8 {
                players = newPlayer
                if newPlayer == 3 {
                    player3View.isHidden = false
                } else if newPlayer == 4 {
                    player4View.isHidden = false
                } else if newPlayer == 5 {
                    player5View.isHidden = false
                } else if newPlayer == 6 {
                    player6View.isHidden = false
                } else if newPlayer == 7 {
                    player7View.isHidden = false
                } else {
                    player8View.isHidden = false
                }
             }
        }
    }
    
    @IBAction func removePlayer(_ sender: UIButton) {
        if !gameStarted {
            if players > 2 {
                if players == 3 {
                    player3View.isHidden = true
                } else if players == 4 {
                    player4View.isHidden = true
                } else if players == 5 {
                    player5View.isHidden = true
                } else if players == 6 {
                    player6View.isHidden = true
                } else if players == 7 {
                    player7View.isHidden = true
                } else {
                    player8View .isHidden = true
                }
                players -= 1
            }
        }
    }
    
    @IBAction func plus(_ sender: UIButton) {
        gameStarted = true;
        if (sender.tag == 1) {
            player1Score += 1
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 4) {
            player2Score += 1
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 7) {
            player3Score += 1
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 10) {
            player4Score += 1
            gameResult(player: player4Score, playerName: "Player4")
        } else if (sender.tag == 13) {
            player5Score += 1
            gameResult(player: player5Score, playerName: "Player5")
        } else if (sender.tag == 16) {
            player6Score += 1
            gameResult(player: player6Score, playerName: "Player6")
        } else if (sender.tag == 19) {
            player7Score += 1
            gameResult(player: player7Score, playerName: "Player7")
        } else if (sender.tag == 22) {
            player8Score += 1
            gameResult(player: player8Score, playerName: "Player8")
        }
    }

    @IBAction func minus (_ sender: UIButton) {
        gameStarted = true;
        if (sender.tag == 2) {
            player1Score -= 1
            gameResult(player: player1Score, playerName: "Player1")
        } else if (sender.tag == 5) {
            player2Score -= 1
            gameResult(player: player2Score, playerName: "Player2")
        } else if (sender.tag == 8) {
            player3Score -= 1
            gameResult(player: player3Score, playerName: "Player3")
        } else if (sender.tag == 11) {
            player4Score -= 1
            gameResult(player: player4Score, playerName: "Player4")
        } else if (sender.tag == 14) {
            player5Score -= 1
            gameResult(player: player5Score, playerName: "Player5")
        } else if (sender.tag == 17) {
            player6Score -= 1
            gameResult(player: player6Score, playerName: "Player6")
        } else if (sender.tag == 20) {
            player7Score -= 1
            gameResult(player: player7Score, playerName: "Player7")
        } else if (sender.tag == 23) {
            player8Score -= 1
            gameResult(player: player8Score, playerName: "Player8")
        }
    }

    @IBAction func calculate (_ sender: UITextField) {
        gameStarted = true;
        let str : String = sender.text!
        if let _ = Int(str) {
            if (sender.tag == 3) {
                player1Score += Int(str)!
                gameResult(player: player1Score, playerName: "Player1")
            } else if (sender.tag == 6) {
                player2Score += Int(str)!
                gameResult(player: player2Score, playerName: "Player2")
            } else if (sender.tag == 9) {
                player3Score += Int(str)!
                gameResult(player: player3Score, playerName: "Player3")
            } else if (sender.tag == 12) {
                player4Score += Int(str)!
                gameResult(player: player4Score, playerName: "Player4")
            } else if (sender.tag == 15) {
                player5Score += Int(str)!
                gameResult(player: player5Score, playerName: "Player5")
            } else if (sender.tag == 18) {
                player6Score += Int(str)!
                gameResult(player: player6Score, playerName: "Player6")
            } else if (sender.tag == 21) {
                player7Score += Int(str)!
                gameResult(player: player7Score, playerName: "Player7")
            } else if (sender.tag == 24) {
                player8Score += Int(str)!
                gameResult(player: player8Score, playerName: "Player8")
            }
        }
    }
    
    @IBAction func reset () {
        player1Score = 20
        player2Score = 20
        player3Score = 20
        player4Score = 20
        player5Score = 20
        player6Score = 20
        player7Score = 20
        player8Score = 20
        gameStarted = false
        gameResult.isHidden = true
        HistoryViewController.history = ["Player1":0, "Player2":0, "Player3":0, "Player4":0, "Player5":0, "Player6":0, "Player7":0, "Player8":0]
        player1.text = String(player1Score)
        player2.text = String(player2Score)
        player3.text = String(player3Score)
        player4.text = String(player4Score)
        player5.text = String(player5Score)
        player6.text = String(player6Score)
        player7.text = String(player7Score)
        player8.text = String(player8Score)
    }

    func gameResult(player: Int, playerName: String) {
        if player <= 0 {
            gameResult.isHidden = false
            gameResult.text = "Game Over! \(playerName) LOSES!"
            HistoryViewController.addToHistory(newHistory:playerName)
        }
        player1.text = String(player1Score)
        player2.text = String(player2Score)
        player3.text = String(player3Score)
        player4.text = String(player4Score)
        player5.text = String(player5Score)
        player6.text = String(player6Score)
        player7.text = String(player7Score)
        player8.text = String(player8Score)
    }
}

