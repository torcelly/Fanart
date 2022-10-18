//
//  Date+RandomDate.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

import Foundation

extension Date {

    static var random: Self {
        let date = Date().timeIntervalSince1970
        let timeInterval = Double.random(in: 1118839159...date)
        return Date(timeIntervalSince1970: timeInterval)
    }

}
