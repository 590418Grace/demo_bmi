//
//  BMIViewController.swift
//  demo_bmi
//
//  Created by 高麗珍 on 2023/8/4.
//

import UIKit

class BMIViewController: UIViewController {

    @IBOutlet weak var BmiLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculate(_ sender: Any) {
        
        if let heightText = heightTextField.text,
           let weightText = weightTextField.text,
           let height = Double(heightText),
           let weight = Double(weightText) {
            
               let heightMeter = height / 100
               let bmi = weight / (heightMeter * heightMeter)
               BmiLabel.text = String(format: "%.2f", bmi)
        }
        
        view.endEditing(true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
