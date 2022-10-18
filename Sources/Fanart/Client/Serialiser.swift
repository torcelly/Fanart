//
//  Serialiser.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

actor Serialiser {

    private let decoder: JSONDecoder

    init(decoder: JSONDecoder) {
        self.decoder = decoder
    }

    func decode<T: Decodable>(_ data: Data) async throws -> T {
        let result: T
        do {
            result = try decoder.decode(T.self, from: data)
        } catch let error {
            throw FanartError.decode(error)
        }

        return result
    }

}

