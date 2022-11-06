//
//  Catchtheshow.swift
//  ParsingJSON
//
//  Created by Anton Boev on 06.11.2022.
//

import Foundation

struct Catchtheshow: Decodable {
    let name: String
    let description: String
    let imageUrl: String
    let rating: Double
    let creators: [String]
    let runtime: String
    let status: String
}
