//
//  Score.swift
//  Bowling2
//
//  Created by Michelline Tran on 6/13/17.
//  Copyright © 2017 Michelline Tran. All rights reserved.
//

import Foundation


class Score {
    func calculate(_ scorecard: [Int]) -> Int {
        var score = Int()
        
        for i in scorecard {
            score += scorecard[i]
        }
        
        return score
    }
    
}
