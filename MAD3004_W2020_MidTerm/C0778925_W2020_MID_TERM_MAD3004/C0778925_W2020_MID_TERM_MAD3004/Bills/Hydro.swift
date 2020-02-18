//
//  Hydro.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Hydro:Bill
{
var agencyName:String
var unitConsumed:Int
var ratePerUnit:Float
init(billId:String,billDate:String,billType:BillType,agencyName:String,unitConsumed:Int,ratePerUnit:Float)
{
self.agencyName=agencyName
self.unitConsumed=unitConsumed 
self.ratePerUnit=ratePerUnit
super.init(billId:billId,billDate:billDate,billType:billType)
    }

/*func getRatePerUnit()->Int
{
return self.ratePerUnit
}
func setRatePerUnit(ratePerUnit:Int)
{
self.ratePerUnit=ratePerUnit
}

func getUnitComsumed()->Int
{
return self.unitComsumed
}
func setUnitComsumed(unitComsumed:Int)
{
self.unitComsumed=unitComsumed
}

func getAgencyName()->String
{
return self.agencyName
}
func setAgencyName(agencyName:String)
{
self.agencyName=agencyName
}*/
 override func calculateTotal()
    {
        self.totalBillAmount=Double(Float(unitConsumed)*ratePerUnit)
    }
    override func display() {
        super.display()
        print("\t Agency Name : \(agencyName)")
        print("\t Units Consumed : \(unitConsumed.unit())")
    }
}
