# LottoPlay

LOTTOPLAY!!!

This app is purely for showcasing Core ML and not for any other use!!!
The data referenced in this app is limited and does not update, so it is unusable for actual predictions. 


Machine Learning:

This app is built with SwiftUI and uses the Core ML framework to connect a MLModel that was trained with .csv data from Excel.

The MLModel was trained using winning Powerball numbers from 2020 to 4/2023 in the .csv format.

The model used "Tabular Regression" analysis and I created 6 different models representing each of the powerball numbers.

First 5 numbers each have a 1/69 probability, and the powerball number has a 1/25 probability. 


SwiftUI:

MVVM Architecture
  Content View - Displays the button to call predictPowerballNumbers() from the ViewModel. 
  ViewModel - Has the predictPowerballNumbers() func to generate powerball numbers and the @Published
              variables that represent each of the six models. 
  PowerballOutput & PowerballInput -  Are the app models for the data.
  MLMultiArray - The extension is used for updating each input to an NSNumber. 

![Screenshot 2023-04-26 at 4 21 57 PM](https://user-images.githubusercontent.com/130512610/234697258-34507cc2-eca3-4ece-aaf4-9ec9a1b0a525.png)
![Screenshot 2023-04-26 at 4 22 02 PM](https://user-images.githubusercontent.com/130512610/234697270-ea0af45d-49ea-45d0-86cb-876de84aee8a.png)
