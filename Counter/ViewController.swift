
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
    ///функция для форматирования времени
    func format() -> String {
        let currentDate = Date()
        let DateFormato = DateFormatter()
        DateFormato.dateFormat = "HH:mm:ss"
        let formattedTime = DateFormato.string(from: currentDate)
        return formattedTime
    }
    //переменная для countLabel
    var number = 0
    //функция обработки нажатия красной кнопки +1
    @IBAction func buttonTouch(_ sender: Any) {
        number += 1
        countLabel.text = "Значение счетчика: \(number)"
        ChangeLog.text += "\n[\(format())]: Значение изменено на +1"
    }
    //функция обработки нажатия синей кнопки +1
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
    //функция обработки нажатия сброса счетчика
    @IBAction func resetBtn(_ sender: Any) {
        
        number = 0
        countLabel.text = "Значение счетчика: \(number)"
        ChangeLog.text += "\n[\(format())]: Значение сброшено"
    }
    
}


