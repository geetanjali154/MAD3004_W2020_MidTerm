//
//  main.swift
//  student
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
print("Hello, World!")
//we have number of students and we need to enter their names,grades in swift.Let the user input their names, grades. Every time after entering ask the user if they want to enter more.
// then show the user a menu with these options:
// 0 to stop.
// 1. search for a student by name.
// 3. print all names of students who pass
// 4. print the name and grade of student who gets the max grade
// 5. Find the success rate
// and accept the user choice and do upon the choice. then show the menu again and so on until the user enters 0
func studentReading(names:inout [String],grades:inout [Double], n:Int){
    for _ in 0..<n
    {
       print("Enter Student Name:")
        names.append(readLine()!)
        print("Enter Grade of student:")
        grades.append(Double(readLine()!)!)
    }
}
//to search a student by its name
func searchByName(names:[String],name:String,grades:[Double])->Double{
    for i in 0..<names.count{
         if name == names[i] {
             print("The grades of student:\(grades[i])")
              }
            }
return -1
}
  // to print the names of passed students
func passStudents(names:[String],grades:[Double])->Int{
    for i in 0..<names.count{
    if grades[i]>=60{
      print(names[i])
        }
    }
    return -1
}

//to find the max grades with name and grade
func maxGrades(names:[String],grades:[Double])->Double{
    var max = grades[0]
    for i in 0..<grades.count{
        if grades[i]>max{
            max = grades[i]
            print("Name of Student:\(names[i])")
            print("Grades:")
            return grades[i]
        }
    }
    return -1
}

// to find the success rate
func successRate(names:[String],grades:[Double])-> Double{
     var sum = 0.0
       var totalOfGrades = 0.0
       for i in 0..<names.count{
           sum += grades[i]
           totalOfGrades=Double(grades.count)
          let sRate = sum/totalOfGrades
        return sRate
    }
    return -1
}

    
print("Enter numbers of students:")
let n = Int(readLine()!)!

// create empty arrays
var maxgrades = [Double]()
var names = [String]()
var grades = [Double]()
 studentReading(names: &names, grades:&grades, n:n)
print("Enter 1 to search student.")
print("Enter 2 to print all passed students:")
print("Enter 3 to print students who get maximum grades.")
print("Enter 4 to print success rate of grades:")
print("Enter 0 to stop")
var choice = 0
repeat{
    print("Enter your choice:")
    choice = Int(readLine()!)!
    switch choice {
    
    case 0 : print("STOP")
    break
case 1 : print("Enter name of student you want to search:")
    let name = String(readLine()!)
let search = searchByName(names: names, name:name, grades:grades)
    if search == -1{
       print("The searched student does not exist.")
    }
    else{
      print(search)
    }
case 2 : print("Print all Students Who passed:")
let pass = passStudents(names: names, grades: grades)
    if pass == -1
    {
      print("All Students are failed.")
    }
    else{
       print(names[pass])
    }
    break
    case 3 : print("Show name and grades of students who get maximum marks:")
    let maximum = maxGrades(names: names, grades: grades)
    print(maximum)
        
    case 4 : print("Print Success rate of grades:")
    let success = successRate(names: names,grades: grades)
        print(success)
        break
default: print("Wrong choice! Try Agian")
}
}while(choice != 0)
