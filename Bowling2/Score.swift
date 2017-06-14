//
//  Score.swift
//  Bowling2
//
//  Created by Michelline Tran on 6/13/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import Foundation


class Score {
    
    var frameEnded = true
    
    func calculate(with scorecard: [Int]) -> Int {
        var finalScore = Int()
        
        for (index, score) in scorecard.enumerated() {
            finalScore += score
            
            if score == 10 {
                finalScore += scorecard[index + 1]
                finalScore += scorecard[index + 2]
            }
      
        }
        
        return finalScore
    }
    
}
