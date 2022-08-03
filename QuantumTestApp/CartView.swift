//
//  CartView.swift
//  QuantumTestApp
//
//  Created by Hitesh Suthar on 03/08/22.
//

import SwiftUI

struct CartView: View {
    @State private var total = 0
    let stores = Bundle.main.decode("data.json")
    var body: some View {
        ZStack {
            NavigationView {
                ScrollView {
                    ForEach(stores, id: \.self.id) { store in
                        LazyVStack {
                            HStack {
                                Text("\(store.storeName.uppercased())")
                                    .foregroundColor(Color.red)
                                    .underline()
                                Spacer()
                                Text("(\(store.products.count) Product)")
                                    .font(.caption)
                            }
                            .padding(.horizontal, 10)
                            Spacer()
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    ForEach(store.products, id: \.self) { product in
                                        VStack {
                                            AsyncImage(url: URL(string: product.image)) { image in
                                                    image
                                                        .resizable()
                                                        .frame(height: 120)
                                                        .scaledToFill()
                                                    } placeholder: {
                                                        ProgressView()
                                                    }
                                                    
                                            Text("₹ \(product.price)")
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.leading, 5)
                                            Text("\(product.name)")
                                                .frame(maxWidth: .infinity, alignment: .leading)
                                                .padding(.leading, 5)
                                        }
                                        .padding(.top, 0)
                                        .frame(width: 150, height: 200, alignment: .topLeading)
                                        .font(.footnote)
                                        .background(Rectangle().fill(Color.white).shadow(radius: 5))
                                    }
                                }
                                .padding([.leading, .vertical], 10)
                            }
                            HStack {
                                Text("₹ \(total)")
                                    .foregroundColor(Color.red)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                    .padding(.leading, 10)
                                Button ("Delete Cart") {
                                }
                                .font(.body)
                                .frame(width: 110, height: 32)
                                .background(Color(.red))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                                Button ("Checkout") {
                                }
                                .frame(width: 110, height: 32)
                                .background(Color(.red))
                                .foregroundColor(.white)
                                .cornerRadius(8)
                            }
                        }
                        
                        .frame(width: UIScreen.main.bounds.width * 0.95, height: 300, alignment: .leading)
                        .compositingGroup()
                        .background(Rectangle().fill(Color.white).shadow(radius: 2))

                    }
                }
                .navigationTitle("Cart")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
