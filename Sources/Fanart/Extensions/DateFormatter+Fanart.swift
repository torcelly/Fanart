//
//  DateFormatter+Fanart.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

extension DateFormatter {

    static var fanart: DateFormatter {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "yyyy-MM-dd"
        return dateFormatter
    }

}
