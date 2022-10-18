//
//  URLSessionConfiguration+Integration.swift
//  
//
//  Created by Fernando Torcelly Garcia on 16/10/22.
//

import Foundation

extension URLSessionConfiguration {

    static var integrationTest: URLSessionConfiguration {
        let configuration = URLSessionConfiguration.default
        configuration.protocolClasses = [FanartTVURLProtocol.self]
        return configuration
    }

}
