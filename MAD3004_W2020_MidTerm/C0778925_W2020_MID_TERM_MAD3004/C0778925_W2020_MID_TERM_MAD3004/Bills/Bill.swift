//
//  Bill.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
enum BillType{
case Mobile,Internet,Hydro,Insurance}
class Bill:IDisplay
{
var billId:String
var billDate:String
var billType:BillType
var totalBillAmount:Double=0.00


init(billId:String,billDate:String,billType:BillType)
{
self.billId=billId
self.billDate=billDate.dateSet(input: billDate)
self.billType=billType
}
    
 
    func calculateTotal()
    {
    }
    
func display()
{
    print("\t Bill ID : \(billId)")
           print("\t Bill Date : \(billDate)")
           print("\t Bill Type : \(billType)")
           print("\t Bill Amount : \(totalBillAmount.currency())")
     /*  func getBillId()->Int
        {
        return billId
        }
        
        func setBillId(billId:Int)
        {
        self.billId=billId
        }
        
        func getBillType()->BillType
        {
        return self.billType
        }
        func setBillType(billType:BillType){
        self.billType=billType}
        
        func getBillDate()->Date
        {
            return self.billDate
        }
        func setBillDate(billDate:Date){
        self.billDate=billDate
    }*/
    }
    
}






