//
//  TVShow.swift
//  
//
//  Created by Fernando Torcelly Garcia on 14/10/22.
//

import Foundation

/// A tv show
public struct TVShow: Decodable, Equatable, Hashable {

    /// Movie identifier.
    public let name: String
    /// TVDB identifier.
    public let tvdbId: String
    /// TVShow clear logo paths.
    public let clearLogo: [Image]
    /// TVShow hd tv logo paths.
    public let hdTVLogo: [Image]
    /// TVShow clear art paths.
    public let clearArt: [Image]
    /// TVShow background paths.
    public let showBackground: [Image]
    /// TVShow thumbnail paths.
    public let tvThumb: [Image]
    /// Season poster paths.
    public let seasonPoster: [Image]
    /// Season thumbnail paths.
    public let seasonThumb: [Image]
    /// HD clear art paths.
    public let hdClearArt: [Image]
    /// TV banner paths.
    public let tvBanner: [Image]
    /// Character art paths.
    public let characterArt: [Image]
    /// TV poster paths.
    public let tvPoster: [Image]
    /// Season banner paths.
    public let seasonBanner: [Image]

}

extension TVShow {

    private enum CodingKeys: String, CodingKey {
        case name
        case tvdbId = "thetvdb_id"
        case clearLogo = "clearlogo"
        case hdTVLogo = "hdtvlogo"
        case clearArt = "clearart"
        case showBackground = "showbackground"
        case tvThumb = "tvthumb"
        case seasonPoster = "seasonposter"
        case seasonThumb = "seasonthumb"
        case hdClearArt = "hdclearart"
        case tvBanner = "tvbanner"
        case characterArt = "characterart"
        case tvPoster = "tvposter"
        case seasonBanner = "seasonbanner"
    }

}
