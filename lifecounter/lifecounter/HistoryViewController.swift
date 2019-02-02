//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by JuAn Oh on 2/1/19.
//  Copyright © 2019 JuAn Oh. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    static var history:[String:Int] = ["Player1":0, "Player2":0, "Player3":0, "Player4":0, "Player5":0, "Player6":0, "Player7":0, "Player8":0]
    @IBOutlet weak var historyView: UITextView!
    class func addToHistory (newHistory:String) {
        history[newHistory] = history[newHistory]! + 1
    }

    class func reset () {
        HistoryViewController.history = ["Player1":0, "Player2":0, "Player3":0, "Player4":0, "Player5":0, "Player6":0, "Player7":0, "Player8":0]
    }
    override func viewDidAppear(_ animated: Bool) {
        historyView.text = ""
        for (players, score) in HistoryViewController.history {
            if score > 0 {
                historyView.text = "\(historyView.text!)" + "\n\(players) " + "lost \(score) life"
            }
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
