// Homework 1
import Foundation

// The generateArray function randomly creates an array of Int optionals
//
// The following questions ask you to perform different calculations based
// on random arrays created by the function. Each time you run the playground
// you should get different results. You can force the playground to run again
// using the Editor --> Execute Playground menu item.  You don't need to be 
// familiar with the code inside this method.
func generateArray() -> [Int?] {
    let size = Int(arc4random() % 20)
    var array = [Int?]()
    var value: Int?
    
    for _ in 0...size {
        value = -10 + Int(arc4random() % 110)
        
        array.append(value >= 0 ? value : nil)
    }

    return array
    
}
// Question 1: Counting nils
//
// Write code that counts the number of nil values in array1
let array1 = generateArray()
var count = 0
for i in array1 {
    if i == nil {
        count += 1
    }
}
count

//or another option to count the nils, but explicitly unwrapping the Int optionals

let array1A = generateArray()
var count1A = 0
for i in array1A {
    if let unwrappedI = i {
    }
    else {
        count1A++
    }
}

count1A




// Question 2: Mean
//
// Write code that calculates the mean value of the non nil elements in array1.

// You do not necessarily need to write functions. You can start your code
// directly under the declaration of array2
let array2 = generateArray()
var sum: Double = 0.0
var numElements: Double = 0
for i in array2 {
    if let unwrappedI = i {
        sum += Double(unwrappedI)
        numElements++
    }
}
sum //see what sum equals to check
numElements //see what numElements to check
var mean = sum / numElements


// Question 3: New Array
//
// Write code that creates a new array named nilFree that has the same elements
// as array3, except without the nil values. The elements in nilFree should be
// Ints, not Int optionals
let array3 = generateArray()
var nilFree = [Int]()
for i in array3 {
    if let unwrappedI = i {
        nilFree.append(unwrappedI)
    }
}
nilFree


// Question 4: Sort array
//
// Write code that will sort array4 using your own logic. You might want to
// review the logic for Selection Sort or even Bubble Sort. Find a sort
// algorithm that you like in a language that you are familiar with and then
// translate it to Swift. Resist the temptation to find a sort online that
// is already written in swift. Do not use Swift's sort method.
//
// Note that array4 is declared with var, so that it is a mutable array.
var array4 = generateArray()
for var i = 0; i < array4.count; i++  {
    var minIndex = i
    for var j = i + 1; j < array4.count; j++ {
        if array4[j] < array4[minIndex] {
            minIndex = j
        }
    }
    if minIndex != i {
        var k = array4[i]
        array4[i] = array4[minIndex]
        array4[minIndex] = k
    }
}
array4


//just to experiment using swift's sort method. Ascending
let sortedNumbers = array4.sort { $0 < $1 }
print(sortedNumbers)

