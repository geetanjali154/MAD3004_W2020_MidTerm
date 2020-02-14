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
var unitComsumed:Int
var ratePerUnit:Int
init(billId:Int,billDate:Date,billType:BillType,agencyName:String,unitComsumed:Int,ratePerUnit:Int)
{
self.agencyName=agencyName
self.unitComsumed=unitComsumed
self.ratePerUnit=ratePerUnit
super.init(billId:billId,billDate:billDate,billType:billType)
    }

func getRatePerUnit()->Int
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
}
}
