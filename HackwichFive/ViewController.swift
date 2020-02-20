//
//  ViewController.swift
//  HackwichFive
//
//  Created by Ashley Aurellano on 2/20/20.
//  Copyright © 2020 Ashley Aurellano. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    //Part 4
    @IBOutlet weak var firstLabel: UILabel!
    @IBOutlet weak var secondLabel: UILabel!
    
    //Part 6
    var currentIndex = 0
    var favoriteFoodArray = ["Shabu Shabu", "Poke", "KBBQ", "Ramen", "Sushi"]
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Part 5
        self.firstLabel.text="My Favorite Foods"
        
    }

    //Part 4
    @IBAction func buttonPressed(_ sender: Any)
    {
        //Part 7
        self.secondLabel.text = favoriteFoodArray[currentIndex]
    }
    
}

