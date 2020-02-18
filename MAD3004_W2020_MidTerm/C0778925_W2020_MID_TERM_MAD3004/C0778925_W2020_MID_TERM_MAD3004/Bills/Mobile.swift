//
//  Mobile.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Mobile:Bill
{
var manufacturerName : String
var planName : String
var mobileNumber : Int
var internetUsage : Float
var ratePerGb:Float
var minutesUsage : Float
var ratePerMinute:Float

    init(billId:String,billDate:String,billType:BillType,manufacturerName : String,planName : String,mobileNumber : Int,internetUsage : Float,ratePerGb:Float,minutesUsage : Float,ratePerMinute:Float)
    {
    self.manufacturerName=manufacturerName
    self.planName=planName
        
    self.mobileNumber=mobileNumber
    self.internetUsage=internetUsage
    self.minutesUsage=minutesUsage
    self.ratePerMinute=ratePerMinute
    self.ratePerGb=ratePerGb
    super.init(billId:billId,billDate:billDate,billType:billType)
    }
    /*func getManufacturerName()->String
    {
    return self.manufacturerName
    }
    func setManufacturerName(manufacturerName:String)
    {t
    self.manufacturerName=manufacturerName
    }
    func getPlanName()->String
    {
    return self.planName
    }
    func setPlanName(planName:String)
    {
    self.planName=planName
    }

    func getMobileNumber()->String
    {
    return self.mobileNumber
    }
    func setMobileNumber(mobileNumber:String)
    {
    self.mobileNumber=mobileNumber
    }

    func getInternetUsage()->Int
    {
    return self.internetUsage
    }
    func setInternetUsage(internetUsage:Int)
    {
    self.internetUsage=internetUsage
    }

    func getMinutesUsage()->Int
    {
    return self.minutesUsage
    }
    func setMinutesUsage(minutesUsage:Int)
    {
    self.minutesUsage=minutesUsage
    }

    func getRatePerMinute()->Int
    {
    return self.ratePerMinute
    }
    func setRatePerMinute(ratePerMinute:Int)
    {
    self.ratePerMinute=ratePerMinute
    }

    func getRatePerGb()->Int
    {
    return self.ratePerGb
    }
    func setRatePerGb(ratePerGb:Int)
    {
    self.ratePerGb=ratePerGb
    }*/
  // override func display()
   // {
     //   print(self.billDate.dateSet(input: billDate))
    //}
    
    override func calculateTotal()
    {
        self.totalBillAmount=Double(minutesUsage*ratePerMinute+internetUsage*ratePerGb)
    }
    override func display() {
           super.display()
           print("\t Mobile Nanufacture Name : \(manufacturerName)")
           print("\t Mobile Plan Name : \(planName)")
           print("\t Mobile Number : \(mobileNumber)")
           print("\t Mobile Internet Used : \(internetUsage.gb())")
           print("\t Minuted Used: \(minutesUsage.min())")
        
           
       }
}
