//
//  ListNode.swift
//  LeetcodeDemo
//
//  Created by zhiliang on 2020/5/15.
//  Copyright © 2020 zhiliang. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public class func listNode(arr: [Int]?) -> ListNode? {
        guard let lst = arr else {
            return nil
        }
        
        var head: ListNode?
        var lastNode: ListNode?
        for v in lst {
            let node = ListNode(v)
            if head == nil {
                head = node
                lastNode = head
            } else {
                lastNode?.next = node
                lastNode = node
            }
        }
        return head
    }

}
