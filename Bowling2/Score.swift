//
//  Score.swift
//  Bowling2
//
//  Created by Michelline Tran on 6/13/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import Foundation


class Score {

    let allPins = 10
    
    func calculate(with scorecard: [Int]) -> Int {
        
        var finalScore = Int()
        
        for (index, score) in scorecard.enumerated() {
            finalScore += score
            
            if index % 2 == 0 {
                if score == allPins {
                    if scorecard.count > index + 2 {
                        finalScore += scorecard[index + 2]
                    }
                    if scorecard.count > index + 3 {
                        finalScore += scorecard[index + 3]
                    }
                    continue
                }
                
                if scorecard.count > index + 1 {
                    if score + scorecard[index + 1] == allPins {
                        if scorecard.count > index + 2 {
                            finalScore += scorecard[index + 2]
                        }
                    }
                    
                }
            }
        }
        
        return finalScore
        
    }
    
}
