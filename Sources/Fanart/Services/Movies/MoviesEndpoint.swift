//
//  MoviesEndpoint.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

enum MoviesEndpoint {

    case movieIMDB(imdb: String)
    case movieTMDB(tmdb: Int)

}

extension MoviesEndpoint: Endpoint {

    private static let basePath = URL(string: "/")!

    var path: URL {
        switch self {
        case .movieIMDB(let imdb):
            return Self.basePath
                .appendingPathComponent("movies")
                .appendingIMDB(imdb)

        case .movieTMDB(let tmdb):
            return Self.basePath
                .appendingPathComponent("movies")
                .appendingTMDB(tmdb)
        }
    }

}
