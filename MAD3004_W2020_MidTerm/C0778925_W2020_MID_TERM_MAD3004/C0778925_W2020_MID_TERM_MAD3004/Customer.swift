//
//  Customer.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Customer
{
var customerId:Int
var firstName:String
var lastName:String
    public var fullName: Any{
    return ("\(firstName)" ,"\(lastName)")
    }

var emailAddress:String
    var arrayOfBills:[ObjectIdentifier]
    var totalBillToPay:Double=0.00
init(customerId:Int,firstName:String,lastName:String,emailAddress:String,arrayOfBills:[ObjectIdentifier],totalBillToPay:Double)
{
self.customerId=customerId
self.firstName=firstName
self.lastName=lastName
self.emailAddress=emailAddress
self.arrayOfBills=arrayOfBills
}

func getCustomerId()->Int{
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
}

}



