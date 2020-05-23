//
//  PlayingCard.swift
//  PlayingCard-learning-app
//
//  Created by Vasiliy Matveev on 23.05.2020.
//  Copyright © 2020 Vasiliy Matveev. All rights reserved.
//

import Foundation

struct PlayingCard: CustomStringConvertible {
    
    var suit: Suit
    var rank: Rank
    
    var description: String { return "\(rank) \(suit)" }
    
    enum Suit: String, CustomStringConvertible {
        
        case spades = "♠️"
        case hearts = "❤️"
        case clubs = "♣️"
        case diamonds = "♦️"
        
        
        static var all = [Suit.spades, .hearts, .clubs, .diamonds]
        
        var description: String { return "\(self.rawValue)" }
    }
    
    enum Rank: CustomStringConvertible {
        
        case ace
        case face(String)
        case numeric(Int)
        
        var order: Int {
            switch self {
            case .ace: return 1
            case .numeric(let pips): return pips
            case .face(let kind) where kind == "J": return 11
            case .face(let kind) where kind == "Q": return 12
            case .face(let kind) where kind == "K": return 13
            default: return 0
            }
        }
        
        static var all: [Rank] {
            var allRanks = [Rank.ace]
            for pips in 2...10 {
                allRanks.append(Rank.numeric(pips))
            }
            allRanks += [Rank.face("J"), .face("Q"), .face("K")]
            return allRanks
        }
        
        
        var description: String { return String(self.order) }
        
    }
    
}
