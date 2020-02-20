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
    
    //Part 8, step 3
    @IBOutlet weak var buttonLabel: UIButton!
    
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

    //Part 4 - these will be the actions taken when the button is pressed
    @IBAction func buttonPressed(_ sender: Any)
    {
        //Part 7 - this will display the "String" text in the favoriteFoodArray in the secondLabel
        self.secondLabel.text = favoriteFoodArray[currentIndex]
        
        //Part 8 - after one press, the secondLabel will not display the next String item. this will tell the button to display the next items according to the number of items in the array. since the currentIndex is 0, and the number ot items in the Array is 5, this will display according to the if/else statement below.
        if self.currentIndex < self.favoriteFoodArray.count
        {
            //since the if/else statement is true, this will display. the currentIndex will increase by 1, so that the next Array item will be able to display.
            currentIndex+=1
             //this changes the button label to "Next" when pressed
            buttonLabel.setTitle("Next", for: UIControl.State.normal)
        }
        else
        {
            //this disables the button once all the items in the Array are displayed.
            (sender as! UIButton).isEnabled=false
        }
    }
    
}

