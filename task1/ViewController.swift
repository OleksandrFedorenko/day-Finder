//
//  ViewController.swift
//  task1
//
//  Created by Alex FEDORENKO on 10/14/19.
//  Copyright © 2019 afedoren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var DayTF: UITextField!
    @IBOutlet weak var MonthTF: UITextField!
    @IBOutlet weak var YearTF: UITextField!
    
    
    @IBOutlet weak var answer: UILabel!
    
    
    
    
    @IBAction func findDay(_ sender: UIButton) {
        
        let calendar = Calendar.current
        
        
        guard let day = DayTF.text, let month = MonthTF.text, let year = YearTF.text else { return }
    
        var dateComponents = DateComponents()
        dateComponents.day = Int(day)
        dateComponents.month = Int(month)
        dateComponents.year = Int(year)
        
        
        if let date = calendar.date(from: dateComponents){
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "EEEE"
            let weekday = dateFormatter.string(from: date)
            answer.text = weekday
        }else{
            answer.text = "No date"
        }
        
      
        
       
       
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

