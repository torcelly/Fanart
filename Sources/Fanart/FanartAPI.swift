//
//  FanartAPI.swift
//
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

/// Fanart API.
///
/// [Fanart API Documentation](https://fanarttv.docs.apiary.io)
///
/// Fanart API service is for those of you interested in using their images in
/// your application. Their API is a system they provide for you and your team to programmatically fetch and use their
/// data and/or images.
public final class FanartAPI {
    
    /// Movies.
    public let movies: MovieService
    /// TV Shows.
    public let tvshows: TVShowService

    public convenience init(apiKey: String) {
        self.init(apiKey: apiKey, urlSessionConfiguration: .default)
    }

    convenience init(apiKey: String, baseURL: URL = .fanartAPIBaseURL, urlSessionConfiguration: URLSessionConfiguration) {
        let urlSession = URLSession(configuration: urlSessionConfiguration)
        let serialiser = Serialiser(decoder: .fanart)
        let apiClient = FanartAPIClient(apiKey: apiKey, baseURL: baseURL, urlSession: urlSession, serialiser: serialiser)

        self.init(
            movies: FanartMovieService(apiClient: apiClient),
            tvshows: FanartTVShowService(apiClient: apiClient)
        )
    }

    init(movies: MovieService, tvshows: TVShowService) {
        self.movies = movies
        self.tvshows = tvshows
    }
}
