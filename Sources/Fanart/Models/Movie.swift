//
//  Movie.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

/// A movie
public struct Movie: Decodable, Equatable, Hashable {

    /// Movie identifier.
    public let name: String
    /// TMDB identifier.
    public let tmdbId: String
    /// IMDB identifier.
    public let imdbId: String
    /// Movie logo paths.
    public let movieLogo: [Image]?
    /// HD movie logo paths.
    public let hdMovieLogo: [Image]?
    /// Movie disc paths.
    public let movieDisc: [Image]?
    /// Movie poster paths.
    public let moviePoster: [Image]?
    /// HD Movie clear art paths.
    public let hdMovieClearArt: [Image]?
    /// Movie clear art paths.
    public let movieArt: [Image]?
    /// Movie background paths.
    public let movieBackground: [Image]?
    /// Movie banner paths.
    public let movieBanner: [Image]?
    /// Movie thumbnail paths.
    public let movieThumb: [Image]?

}

extension Movie {

    private enum CodingKeys: String, CodingKey {
        case name
        case tmdbId = "tmdb_id"
        case imdbId = "imdb_id"
        case movieLogo = "movielogo"
        case hdMovieLogo = "hdmovielogo"
        case movieDisc = "moviedisc"
        case moviePoster = "movieposter"
        case hdMovieClearArt = "hdmovieclearart"
        case movieArt = "movieart"
        case movieBackground = "moviebackground"
        case movieBanner = "moviebanner"
        case movieThumb = "moviethumb"
    }

}
