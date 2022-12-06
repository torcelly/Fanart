//
//  JSONDecoder+Fanart.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

extension JSONDecoder {

    static var fanart: JSONDecoder {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.fanart)
        return decoder
    }

}
