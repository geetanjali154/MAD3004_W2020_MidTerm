//
//  Insurance.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//
enum InsuranceType{
    case Home,Car,Business
}
import Foundation
class Insurance:Bill
{
    var insuranceProviderName:String
   var typeOfInsurance:InsuranceType
    var startDate:String
    var endDate:String
   var totalDays:Int
    var totalInstallmentToPay:Float
    
    init(billId:String,billDate:String,billType:BillType,insuranceProviderName:String,typeOfInsurance:InsuranceType,startDate:String,endDate:String,totalDays:Int,totalInstallmentToPay:Float)
    {
        self.insuranceProviderName=insuranceProviderName
        self.typeOfInsurance=typeOfInsurance
        self.startDate=startDate
        self.endDate=endDate
        self.totalDays=totalDays
        self.totalInstallmentToPay=totalInstallmentToPay
        super.init(billId:billId,billDate:billDate,billType:billType)
    }
    override func display()
    {
        super.display()
        print("\t Insurance Provider Name\(insuranceProviderName)")
        print("\t Type of Insurance\(typeOfInsurance)")
        
    }
    
}
