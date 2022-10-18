//
//  TVShowService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

/// A service to fetch an up to date list of all of the movie ids that have been changed in the past 24 hours.
public protocol TVShowService {

    /// Returns  movie ids that have been changed.
    ///
    /// [Fanart API - Get images for TV Shows](https://fanarttv.docs.apiary.io/reference/tv/get-show/get-images-for-show)
    ///
    /// - Parameters:
    ///     - tvdb: TVDB identifier.
    ///
    /// - Returns: A array of movie ids as a pageable list.
    func tv(tvdb: Int) async throws -> TVShow

}

public extension TVShowService {

    func tv(tvdb: Int) async throws -> TVShow {
        try await tv(tvdb: tvdb)
    }

}
