//
//  TVShowsEndpoint.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

enum TVShowsEndpoint {

    case tv(tvdb: Int)

}

extension TVShowsEndpoint: Endpoint {

    private static let basePath = URL(string: "/")!

    var path: URL {
        switch self {
        case .tv(let tvdb):
            return Self.basePath
                .appendingPathComponent("tv")
                .appendingTVDB(tvdb)
        }
    }

}
