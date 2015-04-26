import Foundation

class Node <T> {
    
    init(value: T) {
        self.value = value
    }
    
    var value: T?
    var nextNode: Node<T>?
    
}


class SingleLinkedList <T> {
    
    var headNode : Node<T>?
    
    func print() -> String {
        var description = ""
        var currentNode = headNode
        while currentNode != nil {
            description += "\(currentNode!.value!) -> "
            currentNode = currentNode?.nextNode
        }
        
        return description + "null"
    }
}

let list = SingleLinkedList<String>()
let nodeA = Node(value: "a")
list.headNode = nodeA
let nodeB = Node(value: "b")
nodeA.nextNode = nodeB
let nodeC = Node(value: "c")
nodeB.nextNode = nodeC
list.print()


let listOneNode = SingleLinkedList<String>()
listOneNode.headNode = Node(value: "D")
listOneNode.print()


let listEmpty = SingleLinkedList<String>()
listEmpty.print()


extension SingleLinkedList {
    
    func hasCycle() -> Bool {
        var pointer1 = self.headNode
        var pointer2 = self.headNode
        
        while pointer2?.nextNode != nil {
            pointer1 = pointer1?.nextNode
            pointer2 = pointer2?.nextNode?.nextNode
            if (pointer1 === pointer2) {
                return true
            }
        }
        return false
    }
}

let cycleList = SingleLinkedList<String>()
cycleList.headNode = nodeA
nodeA.nextNode = nodeB
nodeB.nextNode = nodeA

cycleList.hasCycle()
listEmpty.hasCycle()
listOneNode.hasCycle()
list.hasCycle()






