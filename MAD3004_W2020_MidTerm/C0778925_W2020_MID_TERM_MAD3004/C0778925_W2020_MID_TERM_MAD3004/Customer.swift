//
//  Customer.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Customer:IDisplay
{
var customerId:Int
var firstName:String
var lastName:String
    public var fullName: String{
    return "\(firstName) \(lastName)"
    }
    lazy var bills=[String : Bill]()

var emailAddress:String?
   
    var totalBillToPay:Double=0.00
    
init(customerId:Int,firstName:String,lastName:String,emailAddress:String)
{
self.customerId=customerId
self.firstName=firstName
self.lastName=lastName
    
    if emailValidation(email: emailAddress)
    {
        self.emailAddress=emailAddress
    }
     else
     {
         print("Invalid Email ID for \(customerId) : \(emailAddress) ")
     }


}

/*func getCustomerId()->Int{
return customerId}

func setCustomerId(customerId:Int)
{
self.customerId=customerId
}

func getFirstName()->String{
return firstName}

func setFirstName(firstName:String)
{
self.firstName=firstName
}

func getLastName()->String{
return lastName}

func setLastName(lastName:String)
{
self.lastName=lastName
}*/
 func emailValidation(email:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: email)
    }
    func addBill(bill: Bill, billId: String)
    {
        bills.updateValue(bill, forKey: billId)
    }
    
    func removeBill(billId:String)
    {
        bills.removeValue(forKey: billId)
    }

    func total()->Double
    {
        if bills.count == 0
        {
            print("\t No bill found")
        }
        for i in bills
        {
        totalBillToPay += i.value.totalBillAmount
        }
        return totalBillToPay
}
    
    
    


        func display() {
        print("Customer ID : \(customerId)")
        print("Customer FullName : \(fullName)")
        print("Customer Email ID : \(String(describing: emailAddress))")
        print("\t ---- Bill Information ----")
        print("\t ****************************************")
        for b in bills
        {
            
            b.value.display()
            print("\t ****************************************")
        }
            print("\t Total Bill to Pay : \(total().currency())") 
        print(" ******************************************************* \n \n")
    }

}

