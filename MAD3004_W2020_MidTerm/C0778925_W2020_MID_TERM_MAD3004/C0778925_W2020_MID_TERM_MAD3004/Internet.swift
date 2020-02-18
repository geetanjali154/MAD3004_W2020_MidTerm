//
//  Internet.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
class Internet:Bill
{
var providerName:String
var internetGbUsed:Int
var ratePerGb:Int
init(billId:Int,billDate:String,billType:BillType,providerName:String,internetGbUsed:Int,ratePerGb:Int)
{

self.providerName=providerName
self.internetGbUsed=internetGbUsed
self.ratePerGb=ratePerGb
    super.init(billId:billId,billDate:billDate,billType:billType)
}

/*func setProviderName(providerName:String)
{
self.providerName=providerName
}

func getProviderName()->String{
return self.providerName
}

func setinternetGbUsed(internetGbUsed:Int)
{
self.internetGbUsed=internetGbUsed
}

func getinternetGbUsed()->Int{
return self.internetGbUsed

}
func getRatePerGb()->Int
{
return self.ratePerGb
}
func setRatePerGb(ratePerGb:Int)
{
self.ratePerGb=ratePerGb
}*/
    override func display()
    {
        super.display()
        print("\t Provider Name : \(providerName)")
        print("\t Internet GB Used : \(internetGbUsed.gb())")
    }
   
}

