//
//  String-EmptyChecking.swift
//  CupcakeCorner
//
//  Created by Temple on 2024-05-29.
//

import Foundation


//Address input validation to make sure the user didn't just press the space bar for an empty space. Something must actually be typed:
extension String {
    var isReallyEmpty: Bool {
        self.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }
}
