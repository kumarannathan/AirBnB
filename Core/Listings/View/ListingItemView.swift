//
//  ListingItemView.swift
//  AirBnb
//
//  Created by Kumaran Nathan on 1/30/24.
//

import SwiftUI

struct ListingItemView: View {
    
    let listing: Listing
    var body: some View {
        VStack(spacing: 8) {
            // images
            ListingImageCarouselView(listing: listing)
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            // listing details
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text("\(listing.city), \(listing.state)")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3-10")
                        .foregroundStyle(.gray)

                    HStack(spacing: 4){
                        Text("$\(listing.PricePerNight)")
                            .fontWeight(.semibold)
                    Text("night")
                    }
                    .foregroundStyle(.black)
                    
                }
                
                Spacer()
            //rating
                
                HStack(spacing : 2) {
                    Image(systemName: "star.fill")
                    Text("\(listing.rating)")
                       
                }
                .foregroundStyle(.black)
            }
            
            .font(.footnote)
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView(listing: DeveloperPreview.shared.listings[0])
}
