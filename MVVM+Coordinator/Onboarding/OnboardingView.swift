//
//  OnboardingView.swift
//  MVVM+Coordinator
//
//  Created by Abdurrahman Karaoluk on 17.07.2024.
//

import SwiftUI

struct OnboardingView: View {
    
    var doneRequested: () -> ()
    
    var body: some View {
        TabView {
            ScaledImageView(name: "swift")
                .tag(0)
            ScaledImageView(name: "onboard")
                .tag(1)
            ScaledImageView(name: "deep")
                .tag(2)
            
            Button("Done") {
                doneRequested()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .background(Color.black.ignoresSafeArea(.all))
        
    }
    
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(doneRequested: {})
    }
}


