//
//  main.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

  var  m1 = Mobile(billId: "MOB1", billDate: "10/10/2019", billType: .Mobile, manufacturerName: "Apple Inc.", planName: "LTE+3G", mobileNumber: 17896785678, internetUsage: 5,ratePerGb: 2, minutesUsage: 150,ratePerMinute: 1)
m1.calculateTotal()
var  m2 = Mobile(billId: "MOB2", billDate: "02/10/2020", billType: .Mobile, manufacturerName: "Apple Inc.", planName: "LTE+2G", mobileNumber: 17896785677, internetUsage: 40,ratePerGb: 1.5, minutesUsage: 30,ratePerMinute: 1)
m2.calculateTotal()

var h1 = Hydro(billId: "HYD001", billDate: "05/03/2019", billType: .Hydro, agencyName: "Toronto Hydro",unitConsumed:50,ratePerUnit:2.5)
h1.calculateTotal()
var h2 = Hydro(billId: "HYD002", billDate: "06/30/2019", billType: .Hydro, agencyName: "BC Hydro", unitConsumed: 65,ratePerUnit: 4)
  h2.calculateTotal()

var i1 = Internet(billId: "INT002", billDate: "06/30/2019", billType: .Internet, providerName: "Bell", internetGbUsed: 50, ratePerGb: 1.5)
i1.calculateTotal()
var i2 = Internet(billId: "INT002", billDate: "07/23/2019", billType: .Internet, providerName: "Rogers", internetGbUsed: 35, ratePerGb: 2.5)
i2.calculateTotal()

var in1=Insurance(billId:"INS01",billDate:"02/02/2020",billType:.Insurance,insuranceProviderName:"Costco Ltd",typeOfInsurance:.Car,startDate:"09/08/2019",endDate:"09/08/2021",totalDays:730,totalInstallmentToPay:700)
in1.calculateTotal()
var c3 = Customer(customerId: 1, firstName: "Geetanjali", lastName: "Gupta", emailAddress: "geetanjaligupta154@gmail.com")
var c1 = Customer(customerId: 2, firstName: "Manbeer", lastName: "Kaur", emailAddress: "manbeergill545@gmail.com")
var c2 = Customer(customerId: 3, firstName: "Manpreet", lastName: "Kaur", emailAddress: "manpreetsran454@gmail.com")


  c1.addBill(bill: h1, billId: h1.billId)
c1.addBill(bill: m1, billId: m1.billId)
 c1.addBill(bill: i1, billId: i1.billId)
 c2.addBill(bill: m2, billId: m2.billId)
 c2.addBill(bill: i2, billId: i2.billId)
c3.addBill(bill: h2, billId: h2.billId)
c1.addBill(bill:in1,billId:in1.billId)
c1.display()
c2.display()
c3.display()
var arrayOfCustomers = Array <Customer>()
arrayOfCustomers.append(c1)
arrayOfCustomers.append(c2)
func customersById(id:Int){
for i in arrayOfCustomers
      {
          if id==i.customerId
          {
           i.display()
              
          }
    }
      }

customersById(id: 3)


