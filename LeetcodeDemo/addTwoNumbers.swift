//
//  addTwoNumbers.swift
//  LeetcodeDemo
//
//  Created by zhiliang on 2020/5/15.
//  Copyright © 2020 zhiliang. All rights reserved.
//

import Foundation

class Solution2 {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let head: ListNode = ListNode(0)
        var curNode: ListNode = head
        
        var carry: Int = 0
        var p = l1
        var q = l2
        
        while p != nil || q != nil {
            let x = p?.val ?? 0
            let y = q?.val ?? 0
            let sum = x + y + carry
            
            carry = sum / 10
            
            curNode.next = ListNode(sum % 10)
            curNode = curNode.next!
            
            p = p?.next
            q = q?.next
        }
        
        if carry == 1 {
            curNode.next = ListNode(carry)
            curNode = curNode.next!
        }
        return head.next
    }
    
    class func test(l1: [Int], l2: [Int]) -> [Int] {
        var node = Solution2().addTwoNumbers(ListNode.listNode(arr: l1), ListNode.listNode(arr: l2))
        var resArr: [Int] = []
        while let n = node {
            resArr.append(n.val)
            node = n.next
        }
        return resArr
    }
    
    class func test() {
        assert(test(l1: [2,4,3], l2: [5,6,4]) == [7,0,8])
        assert(test(l1: [2,4,5], l2: [5,6,4]) == [7,0,0,1])
        assert(test(l1: [], l2: [5,6,4]) == [5,6,4])
        assert(test(l1: [2,4,5], l2: []) == [2,4,5])
        assert(test(l1: [], l2: []) == [])
        print("Solution2 addTwoNumbers success")
    }
}
