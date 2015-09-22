//
//  ViewController.swift
//  Motivational Quotes
//
//  Created by Rosario Tarabocchia on 9/22/15.
//  Copyright © 2015 RLDT. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var lblMotivationalQuote: UILabel!
    

    @IBOutlet weak var btnAnotherQuote: UIButton!
    
    var quoteArray = ["You can get it done!", "I believe in you!", "Carpe Diem!", "Just do it!", "Be not afraid of life. Believe that life is worth living, and your belief will help create the fact.", "When I stand before God at the end of my life, I would hope that I would not have a single bit of talent left and could say, I used everything you gave me.",
        
        "When I hear somebody sigh, ‘Life is hard,’ I am always tempted to ask, ‘Compared to what?",
    
        "Whoever loves much, performs much, and can accomplish much, and what is done in love is done well.",
        
        "Look at the sparrows; they do not know what they will do in the next moment. Let us literally live from moment to moment.",
        
        "Live each day as if your life had just begun.",
        
        "Rule #1 of life. Do what makes YOU happy.",
        
        "Our lives begin to end the day we become silent about things that matter.",
        
        "You may find the worst enemy or best friend in yourself.",
        
        "Courage is the first of human qualities because it is the quality which guarantees all others.",
        
        "I am not a product of my circumstances. I am a product of my decisions.",
        
        
        "We become what we think about.",
        
        "The mind is everything. What you think you become.",
        
        "Try to be a rainbow in someone’s cloud.",
        
        "The best and most beautiful things in the world cannot be seen or even touched; they must be felt with the heart.",
        
        "As we express our gratitude, we must never forget that the highest appreciation is not to utter words, but to live by them.",
        
      "The measure of who we are is what we do with what we have.",
        
        "Whoever is happy will make others happy too.",
        
        "Health is the greatest gift, contentment the greatest wealth, faithfulness the best relationship."]
    
    
    var numberQuote = 0

    
    var numberCheck = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func btnAnotherQuoteACTION(sender: UIButton) {
        
        selectQuote()
        
    }
    
    
    func selectQuote(){
        
        
        numberQuote = Int(arc4random_uniform(23))
        
        if numberQuote == numberCheck {
            
            numberQuote = Int(arc4random_uniform(3))
            
            if numberQuote == numberCheck && numberQuote != 0 {
                numberQuote = 0
            }else{
                numberQuote = 1
            }
            
        }
        
        printQuote()
        
        numberCheck = numberQuote
    
    }
    
    
    
    
    func printQuote(){
        
        lblMotivationalQuote.text = "\(quoteArray[numberQuote])"
        
    }
    
    
    
    
    

}

