//
//  ViewController.swift
//  DaysUntilPaycheck
//
//  Created by Cameron Moore on 8/6/18.
//  Copyright © 2018 Cameron Moore. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var daysUntilPaycheck: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func daysUntil()->Int {
        let date = Date()
        let calendar = Calendar.current
        let day: Int = calendar.component(.day,from: date)
        
        if (day == 5 || day == 20) {
            return 0;
        }
        if day >= 1 && day < 5 {
            return 5-day
        }
        if day>5 && day<20 {
            return 20-day
        }
        if day<=31 && day>20 {
            let range = calendar.range(of: .day, in: .month, for: date)!
            let numDaysInMonth = range.count
            return 5-(numDaysInMonth-day)
        }
        return 0;
    }
        
            
        
   
}


