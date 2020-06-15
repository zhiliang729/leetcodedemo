//
//  twoSum.swift
//  LeetcodeDemo
//
//  Created by zhiliang on 2020/5/15.
//  Copyright © 2020 zhiliang. All rights reserved.
//

import Foundation

class Solution1 {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map: [Int : Int] = [:]
        for (i, value) in nums.enumerated() {
            if let j = map[target - nums[i]]  {
                return [j, i]
            }

            map[value] = i
        }

        // var map: [Int : Int] = [:]
        // for (i, value) in nums.enumerated() {
        //     map[value] = i
        // }

        // for i in 0 ..< nums.count {
        //     let a = target - nums[i]
        //     if let j = map[a], j != i  {
        //         return [i, j]
        //     }
        // }
        // return []

        return []
    }
    
    class func test() {
        assert(Solution1().twoSum([2,7,11,15], 9) == [0, 1])
        assert(Solution1().twoSum([2,7,11,15], 0) == [])
        print("Solution1 twoSum success")
    }
}
