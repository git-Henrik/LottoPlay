//
//  LottoPlayApp.swift
//  LottoPlay
//
//  Created by Davin Henrik on 4/26/23.
//

import SwiftUI

@main
struct LottoPlayApp: App {
@StateObject var viewModel = LottoViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(viewModel)
        }
    }
}
