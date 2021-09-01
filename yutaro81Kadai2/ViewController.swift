//
//  ViewController.swift
//  yutaro81Kadai2
//
//  Created by 雄太郎 on 2021/08/31.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak private var label: UILabel!

    @IBAction private func calculationButton(_ sender: Any) {
        let num1 = Double(textField1.text ?? "") ?? 0
        let num2 = Double(textField2.text ?? "") ?? 0
        if segmentedControl.selectedSegmentIndex == 0 {
            let addition = num1 + num2
            label.text = "\(addition)"
        }
        if segmentedControl.selectedSegmentIndex == 1 {
            let subtraction = num1 - num2
            label.text = "\(subtraction)"
        }

        if segmentedControl.selectedSegmentIndex == 2 {
            let multiplication = num1 * num2
            label.text = "\(multiplication)"
        }
        if segmentedControl.selectedSegmentIndex == 3 {
           if num2 != 0 {
              let divison = num1 / num2
                label.text = "\(divison)"
            } else {
                label.text = "割る数には１０以外を入力して下さい"
            }
        }
    }
}
