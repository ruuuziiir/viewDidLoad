//
//  File.swift
//  viewDidLoad
//
//  Created by 7 on 2020/12/3.
//

import UIKit
import Foundation

extension Date {
    func daysBetweenDate(toDate: Date) -> Int {
        let components = Calendar.current.dateComponents([.day], from: self, to: toDate)
        return components.day ?? 0
    }
}

let formatter = DateFormatter()
func count() -> Int{
 formatter.dateFormat = "YYYYMMdd"
 let endDate = formatter.date(from: "20201225")

 /// 当前日期 - 考试日期
    _ = Date()
 let days = Date().daysBetweenDate(toDate: endDate!)
 return days
}
