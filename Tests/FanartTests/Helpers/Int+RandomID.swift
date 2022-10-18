//
//  Int+RandomID.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

import Foundation

extension Int {

    static var randomID: Self {
        .random(in: 1...10000000)
    }

}
