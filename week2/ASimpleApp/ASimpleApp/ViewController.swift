//
//  ViewController.swift
//  ASimpleApp
//
//  Created by Ray Chang on 2023/9/9.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var labelTextView: UILabel!
    
    let text = [
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas tempus.", "Contrary to popular belief, Lorem Ipsum is not simply random text.", "Richard McClintock, a Latin professor at Hampden-Sydney College in ", "looked up one of the more obscure Latin words, consectetur",
    "from a Lorem Ipsum passage, and going through the cities of the word", "This book is a treatise on the theory of ethics, very popular during the.", "The first line of Lorem Ipsum, Lorem ipsum dolor sit amet..",
    ]
    
    let color = [UIColor.systemRed, UIColor.systemOrange, UIColor.systemYellow, UIColor.systemGreen, UIColor.systemBlue, UIColor.systemIndigo, UIColor.systemPurple]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        change()
    }

    @IBAction func Button(_ sender: Any) {
        change()

    }
    
    func change() {
        var randomNumber = Int.random(in: 0...6)
        
        backgroundImageView.backgroundColor = color[randomNumber]
        labelTextView.text = text[randomNumber]
    }
    
}

