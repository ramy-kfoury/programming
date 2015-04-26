import Foundation


class Stack {
    
    private var items = [Int]()
    
    func push(item: Int) {
        items.append(item)
    }
    
    func pop() -> Int? {
        if let item = items.last {
            items.removeLast()
            return item
        }
        return nil
    }
}

class StackQueue {
    private var stack1 = Stack()
    private var stack2 = Stack()
    
    func enqueue(item: Int) {
        stack1.push(item)
    }
    
    func dequeue() -> Int? {
        
        var itemFromStack1 = stack1.pop()
        while (itemFromStack1 != nil) {
            stack2.push(itemFromStack1!)
            itemFromStack1 = stack1.pop()
        }

        var itemToBeDequeued = stack2.pop()

        var itemFromStack2 = stack2.pop()
        while (itemFromStack2 != nil) {
            stack1.push(itemFromStack2!)
            itemFromStack2 = stack2.pop()
        }
        
        return itemToBeDequeued
    }
    
}

let queue = StackQueue()
queue.enqueue(1)
queue.enqueue(2)
queue.enqueue(3)
queue.dequeue()
queue.enqueue(4)
queue.dequeue()

let stack = Stack()
stack.push(1)
stack.push(2)
stack.push(3)
stack.pop()
stack.push(4)
stack.pop()




