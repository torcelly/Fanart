//
//  FanartTVShowService.swift
//  
//
//  Created by Fernando Torcelly Garcia on 15/10/22.
//

import Foundation

final class FanartTVShowService: TVShowService {

    private let apiClient: APIClient

    init(apiClient: APIClient) {
        self.apiClient = apiClient
    }

    func tv(tvdb: Int) async throws -> TVShow {
        try await apiClient.get(endpoint: TVShowsEndpoint.tv(tvdb: tvdb))
    }

}
