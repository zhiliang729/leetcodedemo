//
//  productExceptSelf.swift
//  LeetcodeDemo
//
//  Created by zhiliang on 2020/6/3.
//  Copyright © 2020 zhiliang. All rights reserved.
//

import Foundation

class Solution238 {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var result = Array<Int>(repeating: 1, count: nums.count)
        let count = nums.count
        var t: Int = 1
        for i in 0 ..< count {
            result[i] = t
            t *= nums[i]
        }
        
        t = 1
        for i in 0 ..< count {
            let idx = count - 1 - i
            result[idx] *= t
            t *= nums[idx]
        }
        return result
    }
    
    class func test() {
        assert(Solution238().productExceptSelf([1,2,3,4]) == [24,12,8,6], "error")
        assert(Solution238().productExceptSelf([0,1,2,3]) == [6,0,0,0], "error")
        assert(Solution238().productExceptSelf([1,0,3,4]) == [0,12,0,0], "error")
        print("Solution4 productExceptSelf success")
    }
}
