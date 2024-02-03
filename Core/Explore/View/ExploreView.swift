//
//  ExploreView.swift
//  AirBnb
//
//  Created by Kumaran Nathan on 1/30/24.
//

import SwiftUI

struct ExploreView: View {
    
    @State private var showDestinationSearchView = false
    @State var viewModel = ExploreViewModel(service: ExploreService())
    
    
    var body: some View {
        NavigationStack{
            
            if showDestinationSearchView {
                DestinationSearchView(show: $showDestinationSearchView, viewModel: viewModel)
            } else {
                ScrollView{
                    
                    SearchAndFilterBar(location: $viewModel.searchLocation)
                        .onTapGesture {
                            withAnimation(.snappy) {
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack{
                        ForEach(viewModel.listings) { listing in
                            NavigationLink(value: listing) {
                                ListingItemView(listing: listing)
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                            }
                            
                        }
                    }
                    
                }
                .navigationDestination(for: Listing.self) { listing in ListingDetailView(listing: listing)
                        .navigationBarBackButtonHidden()
                }
                
            }
          
           
        }
    }
}

#Preview {
    ExploreView()
}
