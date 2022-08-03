//
//  FetchJSON.swift
//  QuantumTestApp
//
//  Created by Hitesh Suthar on 02/08/22.
//

import Foundation
extension Bundle {
    func decode (_ file: String) -> [Stores] {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("failed to load \(file) bundle")
        }
        let decoder = JSONDecoder()
        guard let loaded = try? decoder.decode([Stores].self, from: data) else {
             fatalError("Failed to decode \(file) from bundle")
        }
        return loaded
    }
}
