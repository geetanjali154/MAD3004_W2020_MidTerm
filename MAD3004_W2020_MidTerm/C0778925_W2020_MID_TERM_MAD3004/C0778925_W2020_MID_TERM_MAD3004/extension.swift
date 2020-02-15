//
//  extension.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
extension String{
    func dateSet(input:String)
    {
    let formatter = DateFormatter()
    formatter.dateFormat = "MM/dd/yyyy"
    if let date = formatter.date(from: input) {
        print(date)
        }
        
    }
    
   
    
}

