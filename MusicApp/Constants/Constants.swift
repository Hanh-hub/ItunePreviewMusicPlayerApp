//
//  Constants.swift
//  MusicApp
//
//  Created by Hanh Vo on 3/29/23.
//

import Foundation

struct API {
    static private let url = "https://itunes.apple.com"
    static private let path = "/search?term="
    
    static func searchURL(for artistName: String) -> URL? {
        let formattedName = artistName.replacingOccurrences(of: " ", with: "+")
        return URL(string: url + path + formattedName)
    }
}
//enum API {
//    case search(artist: String)
//
//    var baseURL: String {
//        return "https://itunes.apple.com"
//    }
//
//    var path: String {
//        switch self {
//        case .search:
//            return "/search?term="
//        }
//    }
//
//    var url: URL? {
//        switch self {
//        case .search(let artist):
//            return URL(string: baseURL + path + artist)
//        }
//    }
//}


