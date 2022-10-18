//
//  FanartMovieService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

final class FanartMovieService: MovieService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func movie(imdb: String) async throws -> Movie {
        try await apiClient.get(endpoint: MoviesEndpoint.movieIMDB(imdb: imdb))
    }

    func movie(tmdb: Int) async throws -> Movie {
        try await apiClient.get(endpoint: MoviesEndpoint.movieTMDB(tmdb: tmdb))
    }

}
