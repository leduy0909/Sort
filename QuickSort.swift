//
//  QuickSort.swift
//  BubbleSort
//
//  Created by Mettamdaica0909 on 9/11/14.
//  Copyright (c) 2014 Mettamdaica0909. All rights reserved.
//

import UIKit

class QuickSort: GenericVC {

    override func viewDidLoad() {
        super.viewDidLoad()
        var array = [1, 8, 12, 23, 49, 5, 3, 11, 9]
        var SortedArray = quickSort(array)
        for number in SortedArray {
                self.inRa("\(number)")
            }
        }

    func quickSort (array: [Int]) -> ([Int]) {
        var less: [Int] = []
        var equal: [Int] = []
        var greater: [Int] = []
        
        if array.count > 1 {
            var pivot = array[0]
            
            for x in array {
                if x < pivot {
                        less.append(x)
                    }
                if x == pivot {
                        equal.append(x)
                    }
                if x > pivot {
                        greater.append(x)
                    }
                }
                    return (quickSort(less) + equal + quickSort(greater))
        } else {
                return array
            }
        }
}

