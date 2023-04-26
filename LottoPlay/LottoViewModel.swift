//
//  LottoViewModel.swift
//  LottoPlay
//
//  Created by Davin Henrik on 4/26/23.
//

import Foundation
import CoreML

class LottoViewModel: ObservableObject {
    
    @Published var powerballModel = try? LottoRegression(configuration: MLModelConfiguration())
    @Published var powerballModel2 = try?
    LottoRegression2(configuration: MLModelConfiguration())
    @Published var powerballModel3 = try?
    LottoRegression3(configuration: MLModelConfiguration())
    @Published var powerballModel4 = try?
    LottoRegression4(configuration: MLModelConfiguration())
    @Published var powerballModel5 = try?
    LottoRegression5(configuration: MLModelConfiguration())
    @Published var powerballModel6 = try?
    LottoRegression6(configuration: MLModelConfiguration())
    
    func predictPowerballNumbers(input: PowerballInput) -> PowerballOutput? {
        let inputFeatures = LottoRegressionInput(Possible_1: String(input.whiteBall1))
        guard let model = powerballModel else { return nil }
        guard let output = try? model.prediction(input: inputFeatures) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber1 = output.Value_1
        
        let inputFeatures2 = LottoRegression2Input(Possible_2: String(input.whiteBall2))
        guard let model2 = powerballModel2 else { return nil }
        guard let output2 = try? model2.prediction(input: inputFeatures2) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber2 = output2.Value_2
        
        let inputFeatures3 = LottoRegression3Input(Possible_3: String(input.whiteBall3))
        guard let model3 = powerballModel3 else { return nil }
        guard let output3 = try? model3.prediction(input: inputFeatures3) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber3 = output3.Value_3
        
        let inputFeatures4 = LottoRegression4Input(Possible_4: String(input.whiteBall4))
        guard let model4 = powerballModel4 else { return nil }
        guard let output4 = try? model4.prediction(input: inputFeatures4) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber4 = output4.Value_4
        
        let inputFeatures5 = LottoRegression5Input(Possible_5: String(input.whiteBall5))
        guard let model5 = powerballModel5 else { return nil }
        guard let output5 = try? model5.prediction(input: inputFeatures5) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber5 = output5.Value_5
        
        let inputFeatures6 = LottoRegression6Input(Poss_Red: String(input.redBall))
        guard let model6 = powerballModel6 else { return nil }
        guard let output6 = try? model6.prediction(input: inputFeatures6) else {
            fatalError("Unexpected runtime error.")
        }
        let predictedNumber6 = output6.Red_Value
        
        let predictedNumber = [
            Int(predictedNumber1), Int(predictedNumber2), Int(predictedNumber3), Int(predictedNumber4), Int(predictedNumber5), Int(predictedNumber6)
        ]
        
        return PowerballOutput(predictedNumber: predictedNumber)
    }
}
