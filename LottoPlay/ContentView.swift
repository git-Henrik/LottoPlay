//
//  ContentView.swift
//  LottoPlay
//
//  Created by Davin Henrik on 4/26/23.
//
import CoreML
import SwiftUI

struct ContentView: View {
    @EnvironmentObject var viewModel: LottoViewModel
    @State private var predictedNumbers: [Int] = []
    
    var body: some View {
        VStack {
            Button("Generate Powerball Numbers") {
                let input = PowerballInput(whiteBall1: 1.0, whiteBall2: 2.0, whiteBall3: 3.0, whiteBall4: 4.0, whiteBall5: 5.0, redBall: 6.0)
                if let output = viewModel.predictPowerballNumbers(input: input) {
                    predictedNumbers = output.predictedNumber
                }
            }
            
            if !predictedNumbers.isEmpty {
                HStack(spacing: 20) {
                    ForEach(predictedNumbers, id: \.self) { number in
                        Text(String(number))
                            .font(.title2)
                            .fontWeight(.bold)
                            .padding(5)
                            .border(.black, width: 1)
                    }
                }
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
