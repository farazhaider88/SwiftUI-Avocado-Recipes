//
//  HeaderModel.swift
//  Avocado Recipes
//
//  Created by Faraz Haider on 21/06/2020.
//  Copyright © 2020 Etisalat. All rights reserved.
//

import SwiftUI

//MARK: - Header Model

struct Header:Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
