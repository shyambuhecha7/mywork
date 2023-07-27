//
//  Data.swift
//  PricticeiOS
//
//  Created by Shyam Buhecha on 27/07/23.
//

import Foundation
struct UsersList: Codable {
    let page, perPage, total, totalPages: Int
    let data: [UserData]
    let support: Support

    enum CodingKeys: String, CodingKey {
        case page
        case perPage = "per_page"
        case total
        case totalPages = "total_pages"
        case data, support
    }
}

// MARK: - Datum
struct UserData: Codable {
    let id: Int
    let email, firstName, lastName: String
    let avatar: String

    enum CodingKeys: String, CodingKey {
        case id, email
        case firstName = "first_name"
        case lastName = "last_name"
        case avatar
    }
}

// MARK: - Support
struct SupportData: Codable {
    let url: String
    let text: String
}

