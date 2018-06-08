
//  Created by mescurra on 6/8/18.
//  Copyright © 2018 mescurra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    @IBOutlet weak var pickerView1: UIPickerView!
    
    @IBOutlet weak var pickerview2: UIPickerView!
    
    @IBOutlet weak var labelResult: UILabel!
    
    var timeTable: TimeTable!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadPickerView()
        print("viewDidLoad")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func loadPickerView(){
        self.pickerView1.selectRow(4, inComponent: 0, animated: false)
        self.pickerview2.selectRow(4, inComponent: 0, animated: false)
        self.labelResult.text = "16"
        timeTable = TimeTable()
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return "\(row)"
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let val1 = pickerView1.selectedRow(inComponent: 0)
        let val2 = pickerview2.selectedRow(inComponent: 0)
        
        labelResult.text = "\(timeTable.multiply(val1, b: val2))"
    }

}



