//
//  DestinationSearchView.swift
//  AirBnb
//
//  Created by Kumaran Nathan on 2/3/24.
//

import SwiftUI


enum DestinationSearchOptions {
    case location
    case dates
    case guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    //@State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 0
    @ObservedObject var viewModel: ExploreViewModel
    
    var body: some View {
        VStack 
        {
            
            
            
            HStack{
                Button {
                    withAnimation(.snappy){
                        show.toggle()
                        viewModel.updateListingsForLocation()
                    }
                    
                } label: {
                    Image(systemName: "xmark.circle")
                        .imageScale(.large)
                        .foregroundStyle(.black)
                    
                    
                }
                Spacer()
                
                if !viewModel.searchLocation.isEmpty {
                    Button("Clear") {
                        viewModel.searchLocation = ""
                        viewModel.updateListingsForLocation()
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                }
            }
            .padding()

            VStack(alignment: .leading) {
                if selectedOption == .location {
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        
                        TextField("Search destinations", text: $viewModel.searchLocation)
                            .font(.subheadline)
                            .onSubmit {
                                viewModel.updateListingsForLocation()
                                show.toggle()
                            }
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay {
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .foregroundStyle(Color(.systemGray))
                    }
                }else{
                    
                    CollapsedPicker(title: "Where", description: "Add Destination")

                }
                
            
            }
            
            .modifier(CollapsedDestViewModfiier())
            .frame(height: selectedOption == .location ? 120 : 64)

            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .location }
            }
            
           //Dates view
            VStack(alignment: .leading) {
                if selectedOption  == .dates {
                 Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    VStack {
                        DatePicker("From", selection: $startDate, displayedComponents: .date)
                        Divider()
                        DatePicker("To", selection: $endDate, displayedComponents: .date)

                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)

                } else {
                    CollapsedPicker(title: "When", description: "Add Dates")
                    
                }
            }
            
            .modifier(CollapsedDestViewModfiier())
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .dates }
            }
       
            //Guests
            VStack(alignment: .leading) {
                if selectedOption  == .guests {
                    Text("Who's coming?")
                        .font(.title)
                        .fontWeight(.semibold)
                    
                    Stepper {
                      Text("\(numGuests) Adults")
                    } onIncrement: {
                       numGuests += 1
                    } onDecrement: {
                        guard numGuests > 0 else { return }
                        numGuests -= 1
                    }
                    
                  
                } else {
                    CollapsedPicker(title: "Who", description: "Add Guests")
                    
                }
            }
            .modifier(CollapsedDestViewModfiier())
            .frame(height: selectedOption == .guests ? 120 : 64)
            .onTapGesture {
                withAnimation(.snappy) { selectedOption = .guests }
                
            }
        }
        Spacer()
        
    }
}

#Preview {
    DestinationSearchView(show: .constant(false), viewModel: ExploreViewModel(service: ExploreService()))
}

struct CollapsedDestViewModfiier: ViewModifier {
    func body(content: Content) -> some View {
        content      
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding()
            .shadow(radius: 10)
    }
}

struct CollapsedPicker: View {
    let title: String
    let description: String
    var body: some View {
        VStack {
            HStack {
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                Text(description)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
        }
//        .padding()
//        .background(.white)
//        .clipShape(RoundedRectangle(cornerRadius: 12))
//        .padding()
//        .shadow(radius: 10)
    }
}
