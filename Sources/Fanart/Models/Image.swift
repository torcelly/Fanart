//
//  Image.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

/// A image
public struct Image: Identifiable, Decodable, Equatable, Hashable {

    /// Image identifier.
    public let id: String
    /// Image path.
    public let url: String
    /// Language.
    public let lang: String
    /// Number of likes.
    public let likes: String
    /// Disc number.
    public let disc: String?
    /// Disc type.
    public let discType: String?

}

extension Image {

    private enum CodingKeys: String, CodingKey {
        case id
        case url
        case lang
        case likes
        case disc
        case discType = "disc_type"
    }

}
