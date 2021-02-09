//
//  EditViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 2/9/21.
//

import UIKit

class EditViewController: UIViewController {

  @IBOutlet weak var displayLabel: UILabel!
  
  override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
  
  @IBAction func didChangeDate(_ sender: UIDatePicker) {
    let dateObj:Date = sender.date
    let formatter:DateFormatter = DateFormatter()
    formatter.dateFormat = "EEEE"
    let dayOfWeek:String = formatter.string(from: dateObj)
    displayLabel.text = "You where born on a \(dayOfWeek)."
  }
  
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
