//
//  main.swift
//  L06
//
//  Created by 张小铀 on 2017/6/2.
//  Copyright © 2017年 张小铀. All rights reserved.
//

import Foundation

func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
    var min = scores[0]
    var max = scores[0]
    var sum = 0
    for score in scores {
        if score > max {
            max = score
        } else if score < min {
            min = score }
        sum += score }
    
    return (min, max, sum)
}
let statistics = calculateStatistics(scores:[5, 3, 100, 3, 9])
print(statistics.sum)
print(statistics.2)

