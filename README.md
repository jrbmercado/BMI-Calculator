
# BMI Calculator

A calculator app to figure out your Body Mass Index (BMI) and figure out if you're at the perfect weight.
## Demo

![bmi](https://user-images.githubusercontent.com/60119119/186052857-1373666c-f597-4b70-8386-5d69fc711a64.gif)

## Features

- BMI Calculation based on inputted weight and height.
- BMI Interpretation, what you should do if the calculated BMI is considered under or overweight.
- Multiple views connected to segway into each other back and fourth.


## Installation

Currently not on the App Store and only on Github for educational and demonstration purposes only. This app has no affiliation with Apple, Inc.
## Lessons Learned

In this project, I learned how to create multiple scenes controlled by their own View Controllers. I also began to impliment a MVC (Model View Controller) design pattern to make debugging and further development more streamlined in the future. Finally, this project also had me practice how to create classes and structs to take advantage of Object Oriented Programming.
## Breakthough Discovery: Performing Segues and Passing Data Across ViewControllers

```javascript
    @IBAction func calculatePressed(_ sender: UIButton) {
        // Get the values from the sliders
        let height = heightSlider.value
        let weight = weightSlider.value
        
        // Give the values to the calculator brain to calculate BMI
        calculatorBrain.calculateBMI(height:height, weight:weight)
        
        // Pull up the new screen with the result BMI and advice
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    // Prior to performing segue to the new screen, handoff calculated values and properties to the new view controller
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "goToResult"){
            let destinationVC = segue.destination as! ResultViewController
            destinationVC.bmiValue = calculatorBrain.getBMIValue()
            destinationVC.advice = calculatorBrain.getAdvice()
            destinationVC.color = calculatorBrain.getColor()
        }
    }
```

This snippet of code was a breakthrough moment for me to learn how to pull up new screens using segues when the user presses the calculate button. In addition to pulling up a new model, this snippet also taught me how to send values from one ViewController to another, to reduce the need to recalculate values when we switch to a new screen.
## FAQ

#### How is BMI calculated to Underweight, Normal Weight, and Overweight?
Of course, everyone's body and diet is unique, the BMI system provides a rough estimate about where you stand in general health. I have created this app to follow the BMI Chart  most commonly found at doctor's offices to stay within general guidelines.
![BMI-Chart](https://user-images.githubusercontent.com/60119119/186052846-da63a21e-9ab5-4384-b9c7-eea1d558a28e.png)

## Contributing Authors
- Angela Yu @angelabauer on GitHub

