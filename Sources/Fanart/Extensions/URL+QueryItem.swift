//
//  URL+QueryItem.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

extension URL {

    func appendingPathComponent(_ value: Int) -> Self {
        appendingPathComponent(String(value))
    }

    func appendingQueryItem(name: String, value: CustomStringConvertible) -> Self {
        var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: false)!
        var queryItems = urlComponents.queryItems ?? []
        queryItems.append(URLQueryItem(name: name, value: value.description))
        urlComponents.queryItems = queryItems
        return urlComponents.url!
    }

}

extension URL {

    private enum QueryItemName {
        static let apiKey = "api_key"
    }

    func appendingAPIKey(_ apiKey: String) -> Self {
        appendingQueryItem(name: QueryItemName.apiKey, value: apiKey)
    }

    func appendingIMDB(_ imdb: String) -> Self {
        return appendingPathComponent(imdb)
    }

    func appendingTMDB(_ tmdb: Int) -> Self {
        return appendingPathComponent(String(tmdb))
    }
    
    func appendingTVDB(_ tvdb: Int) -> Self {
        return appendingPathComponent(String(tvdb))
    }
}
