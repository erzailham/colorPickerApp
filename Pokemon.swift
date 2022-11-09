//
//  Pokemon.swift
//  Color Picker
//
//  Created by Reza Ilham on 08/11/22.
//

import Foundation

// MARK: - Pokemon
struct Pokemon: Codable {
    var height: Int?
    var id: Int?
    var isActive: Bool?
    var name: String?
    var weight: Int?
    var species: PokeUrl?
    var abilities: [Ability]?
    var imageUrl: String?

    enum CodingKeys: String, CodingKey {
        case height, id
        case isActive = "is_default"
        case name, weight, species, abilities, imageUrl
    }
}

// MARK: - PokeUrl
struct PokeUrl: Codable {
    let name: String?
    let url: String?
}

// MARK: - Ability
struct Ability: Codable {
    let ability: PokeUrl?
    let isHidden: Bool?
    let slot: Int?
    
    enum CodingKeys: String, CodingKey {
        case ability
        case isHidden = "is_hidden"
        case slot
    }
}
