//
//  main.swift
//  employee
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//
// Create a program with function
import Foundation
print("Hello, World!")
import Foundation
//var employeType : String
let employeType:String
print("Enter the type of employement:")
employeType=String(readLine()!)
var annualsalary = 0.0
var tax=0.0
var monthlysalary:Double
func calculate(tax:Double)->Double{
    var tax: Double
    var netsalary:Double
    if employeType == "fulltime"{
    if annualsalary>=90000
    {   tax = 0.22
        netsalary = annualsalary/(tax+1)
        print("Net salary:\(netsalary)")
        return tax
    }
    else if annualsalary>60000
   {    tax = 0.17
     netsalary = annualsalary/(tax+1)
    print("Net salary:\(netsalary)")
    return tax
    }
    else if annualsalary>50000
    {   tax = 0.10
         netsalary = annualsalary/(tax+1)
        print("Net salary:\(netsalary)")
        return tax
    }
    else
       {
        print("No Tax.")
        }
        return 0
    }
    else {
        tax = 0.15
         netsalary = annualsalary/(tax+1)
        print("Net salary:\(netsalary)")
        
        return tax
        }
    
}
print("Enter monthly salary of employee:")
monthlysalary = Double(readLine()!)!
annualsalary = monthlysalary * 12
print("Annual Salary of employee:\(annualsalary)")
annualsalary=annualsalary-tax*annualsalary
print("tax is:\(calculate(tax:monthlysalary))")


