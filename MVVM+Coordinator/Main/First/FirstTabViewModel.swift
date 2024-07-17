//
//  FirstTabViewModel.swift
//  MVVM+Coordinator
//
//  Created by Abdurrahman Karaoluk on 17.07.2024.
//

import Foundation


class FirstTabViewModel: ObservableObject {
    
    @Published var name: String = ""
    @Published var email: String = ""
}
