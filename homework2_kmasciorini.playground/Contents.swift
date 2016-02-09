//Homework 2 - Kristin Masciorini, CS212

import UIKit

//Write a struct named Circle

struct Circle {
    var radius: Double {
    
        didSet {
            if radius < 0 {
                radius = 0
            }
        }
    }
    
    var area: Double {
        return M_PI * radius * radius
    }
    
    var circumference: Double {
        return 2 * M_PI * radius
    }
    
    init() {
        self.radius = 0
    }
    
    init(r radius: Double) {
        if radius < 0 {
            self.radius = 0
        }
        else {
            self.radius = radius
        }
    }
}

var testCircle = Circle(r: 10.0)
print(testCircle)
testCircle.area
testCircle.circumference



//Write a class named CircleCollection

class CircleCollection {
    private var arrayCircles = [Circle]()
    
    var count: Int {
        return arrayCircles.count
    }
    
    //created an init so that I could test Circle Collection
    init() {
        let circle = Circle()
        arrayCircles.append(circle)
    }
    
    init(circle: Circle) {
        arrayCircles.append(circle)
    }
    
    func removeCirclesWithRadiiLargerThan(min: Double, butSmallerThan: Double) {
        for var i = 0; i < count; i++ {
            if arrayCircles[i].radius > min && arrayCircles[i].radius < butSmallerThan {
                arrayCircles.removeAtIndex(i)
            }
        }
        
    }

}

var testCircle2 = Circle(r: 5.0)
var testCircleCollection = CircleCollection(circle: testCircle2)
testCircleCollection.count
testCircleCollection.removeCirclesWithRadiiLargerThan(3, butSmallerThan: 8)
testCircleCollection.count

    

//Write a class named ToDoItem

class ToDoItem {
    var task: String
    var priority: Int {
        didSet {
            if priority < 0 {
                self.priority = 0
            }
            else if priority > 10 {
                self.priority = 10
            }
        }
    }
    
    var dueDate: NSDate?
    
    init(task: String, priority: Int, dueDate: NSDate?) {
        self.task = task
        self.priority = priority
        self.dueDate = dueDate
    }
    
    func fullDescription() -> String {
        if let dueDate = dueDate {
            return task + ": " + "\(priority)" + ": " + "\(dueDate)"
        }
        else {
            return task + "\(priority)"
        }
    }
}

var doSomething = ToDoItem(task: "laundry", priority: 5, dueDate: NSDate())

doSomething.fullDescription()


//Write a class named AnnotatedToDoItem


class AnnotatedToDoItem: ToDoItem {
    var note: String?
    
    init(task: String, priority: Int, dueDate: NSDate?, note: String?) {
        self.note = note
        super.init(task: task, priority: priority, dueDate: dueDate)
    }
    
    override func fullDescription() -> String {
        if let note = note {
            return super.fullDescription() + " " + note
            }
        else {
            return super.fullDescription()
        }
}
}

var doToDo = AnnotatedToDoItem(task: "dishes", priority: 11, dueDate: NSDate(), note: "do asap")

doToDo.fullDescription()



        
    
