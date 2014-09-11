//
//  BubbleSort.swift
//  BubbleSort
//
//  Created by Mettamdaica0909 on 9/11/14.
//  Copyright (c) 2014 Mettamdaica0909. All rights reserved.
//

import UIKit

class BubbleSort: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()

        var array = [1, 8, 12, 23, 49, 5, 3, 11, 9]
        for var i: Int = array.count-1; i > 1; i-- {
            for var j: Int = 0; j < i; j++ {
                var number = array[j]
                if(array[i] < array[j]) {
                    array[j] = array[i]
                    array[i] = number
                }
            }
        }
        for number in array {
            self.inRa("\(number)")
        }
    }
}
