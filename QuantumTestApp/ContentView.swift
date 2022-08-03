//
//  ContentView.swift
//  QuantumTestApp
//
//  Created by Hitesh Suthar on 02/08/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ProxyTabViews(filter: .home)
                .tabItem {
                    Label("Home", systemImage: "house.fill")
                }
            ProxyTabViews(filter: .saved)
                .tabItem {
                    Label("Saved", systemImage: "heart.fill")
                }
            ProxyTabViews(filter: .notifications)
                .tabItem {
                    Label("Notifications", systemImage: "bell.fill")
                }
            ProxyTabViews(filter: .profile)
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
