//
//  ViewController.swift
//  PlayingCard-learning-app
//
//  Created by Vasiliy Matveev on 23.05.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var deck = PlayingCardDeck()
        for _ in 1...10 {
            if let card = deck.draw() {
                print("\(card)")
            }
        }
    }


}

