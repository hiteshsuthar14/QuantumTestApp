//
//  ProxyTabViews.swift
//  QuantumTestApp
//
//  Created by Hitesh Suthar on 03/08/22.
//

import SwiftUI

struct ProxyTabViews: View {
    enum FilterType {
        case home, saved, notifications, profile, cart
    }
    let filter: FilterType
    var body: some View {
        Text("This is \(tabName) Tab")
    }
    var tabName: String {
        switch filter {
        case .home:
            return "Home"
        case .saved:
            return "Saved"
        case .notifications:
            return "Notifications"
        case .profile:
            return "Profile"
        case .cart:
            return "Cart"
        }
    }
}
struct ProxyTabViews_Previews: PreviewProvider {
    static var previews: some View {
        ProxyTabViews(filter: .home)
    }
}
