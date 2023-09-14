//
//  ViewController.swift
//  ASimpleLoginSignupPage
//
//  Created by Ray Chang on 2023/9/13.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var accountTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var checkTextField: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var changeLogInSignUp: UISegmentedControl!
    
    // Log In segment disable check.
    func disableCheck() {
        checkTextField.isUserInteractionEnabled = false
        checkTextField.backgroundColor = UIColor.darkGray
        checkLabel.textColor = UIColor.darkGray
    }
    
    // Sign Up segment enable check.
    func enableCheck() {
        checkTextField.isUserInteractionEnabled = true
        checkTextField.backgroundColor = UIColor.white
        checkLabel.textColor = UIColor.black
    }
    
    // Change disableCheck and enableCheck between Log In Sign Up segment.
    @IBAction func changeLogInSignUp(_ sender: UISegmentedControl) {
        if changeLogInSignUp.selectedSegmentIndex == 0 {
            disableCheck()
        } else {
            enableCheck()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UISegmentedControl.appearance().setTitleTextAttributes([.foregroundColor: UIColor.white], for: .selected)
        disableCheck()
    }
    
    @IBAction func button(_ sender: Any) {
            if changeLogInSignUp.selectedSegmentIndex == 0 {
                if accountTextField.text == "" || passwordTextField.text == "" {
                    showErrorAlert(message: "Account or Password should not be empty.")
                } else if accountTextField.text != "appworks_school" || passwordTextField.text != "1234" {
                    showErrorAlert(message: "Log-In Fail")
                } else {
                    showSuccessAlert()
                }
            } else {
                if accountTextField.text == "" {
                    showErrorAlert(message: "Account should not be empty.")
                } else if passwordTextField.text == "" {
                    showErrorAlert(message: "Password should not be empty.")
                } else if checkTextField.text == "" {
                    showErrorAlert(message: "Check should not be empty.")
                } else if passwordTextField.text != checkTextField.text {
                    showErrorAlert(message: "Sign-Up Fail")
                }
            }
        }
        
        private func showErrorAlert(message: String) {
            let alert = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true)
        }
        
        private func showSuccessAlert() {
            let alert = UIAlertController(title: "Success", message: "", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default, handler: nil)
            alert.addAction(action)
            present(alert, animated: true)
        }
}
