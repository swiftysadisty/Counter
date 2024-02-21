//
//  ViewController.swift
//  newApp
//
//  Created by Алексей Шишкарев on 16.02.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ChangeLog: UITextView!
    @IBOutlet weak var resetButton: UIButton!
    @IBOutlet weak var changeButtonBlue: UIButton!
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var changeButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        changeButton.backgroundColor = UIColor.red
        countLabel.text = "Значение счетчика: 0"
        ChangeLog.text = "История изменений:"
    }
    
    func format() -> String {
        let currentDate = Date()
        let DateFormato = DateFormatter()
        DateFormato.dateFormat = "HH:mm:ss"
        let formattedTime = DateFormato.string(from: currentDate)
        return formattedTime
    }
    
  
    var number = 0
  
    @IBAction func buttonTouch(_ sender: Any) {
        number += 1
        countLabel.text = "Значение счетчика: \(number)"
        ChangeLog.text += "\n[\(format())]: Значение изменено на +1"
    }
    
    @IBAction func buttonTouchBlue(_ sender: Any) {
        
        if number > 0 {
            number -= 1
            ChangeLog.text += "\n[\(format())]: Значение изменено на -1"
        } else {
            number = 0
            ChangeLog.text += "\n[\(format())]: Попытка уменьшить значение счётчика ниже 0"
        }
        countLabel.text = "Значение счетчика: \(number)"
    }
    
    @IBAction func resetBtn(_ sender: Any) {
        
        number = 0
        countLabel.text = "Значение счетчика: \(number)"
        ChangeLog.text += "\n[\(format())]: Значение сброшено"
    }
    
}


