//
//  main.swift
//  C0778925_W2020_MID_TERM_MAD3004
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

class Main
{
    static func from(year: Int, month: Int, day: Int) -> Date? {
    let calendar = Calendar(identifier: .gregorian)
    var dateComponents = DateComponents()
    dateComponents.day = day
    return calendar.date(from: dateComponents)
}
}
