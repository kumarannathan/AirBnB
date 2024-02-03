//
//  ExploreService.swift
//  AirBnb
//
//  Created by Kumaran Nathan on 2/4/24.
//

import Foundation
class ExploreService {
    func fetchListings() async throws -> [Listing] {
        return DeveloperPreview.shared.listings
    }
}
