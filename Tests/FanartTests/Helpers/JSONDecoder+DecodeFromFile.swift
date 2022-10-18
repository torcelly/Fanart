//
//  JSONDecoder+DecodeFromFile.swift
//
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

import Foundation

extension JSONDecoder {

    func decode<T>(_ type: T.Type, fromResource fileName: String,
                   withExtension fileType: String = "json") throws -> T where T: Decodable {
        let data = try Data(fromResource: fileName, withExtension: fileType)
        return try decode(T.self, from: data)
    }

}
