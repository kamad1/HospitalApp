//
//  PriceView.swift
//  HospitalApp
//
//  Created by Jedi on 10.08.2025.
//

import SwiftUI

struct PriceView: View {
    var card: CellModel
    var vm: HomeViewModel?
    
    var body: some View {
        Text("\(card.home_price) ₽")
    }
}

//#Preview {
//    PriceView(card: card.self)
//}
