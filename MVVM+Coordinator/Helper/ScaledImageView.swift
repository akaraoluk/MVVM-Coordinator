//
//  ScaledImageView.swift
//  MVVM+Coordinator
//
//  Created by Abdurrahman Karaoluk on 17.07.2024.
//

import SwiftUI

struct ScaledImageView: View {
    let name: String
    var body: some View {
        Image(name)
            .resizable()
            .scaledToFit()
    }
}

//struct ScaledImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        ScaledImageView()
//    }
//}
