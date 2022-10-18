//
//  String+RandomID.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

import Foundation

extension String {

    static var randomID: Self {
        String(Int.randomID)
    }

    static var randomString: Self {
        UUID().uuidString
    }

}
