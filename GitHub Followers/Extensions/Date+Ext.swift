//
//  Date+Ext.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-11.
//

import Foundation

extension Date {
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM. yyyy @ h:mm a"
        
        return dateFormatter.string(from: self)
    }
}
