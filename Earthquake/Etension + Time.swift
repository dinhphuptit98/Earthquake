//
//  Etension + Time.swift
//  Earthquake
//
//  Created by NguyenDinhPhu on 6/5/18.
//  Copyright © 2018 nguyendinhphu. All rights reserved.
//

import Foundation

extension TimeInterval {
    var toDay: String {
        get {
            let date = Date(timeIntervalSince1970: self)
            let formatter = DateFormatter()
            formatter.dateFormat = "MMMM d,2016"
            return formatter.string(from: date)
        }
    }
    var toDate: String {
        get {
            let date = Date(timeIntervalSince1970: self)
            let formatter = DateFormatter()
            formatter.dateFormat = "eeee"
            formatter.locale = Locale(identifier: "vi_VN")
            return formatter.string(from: date)
        }
    }
    var toHour: String {
        get {
            let date = Date(timeIntervalSince1970: self)
            let formatter = DateFormatter()
            formatter.dateFormat = "HH:mm"
            return formatter.string(from: date)
        }
    }
}

