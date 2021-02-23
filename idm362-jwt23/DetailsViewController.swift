//
//  DetailsViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 2/23/21.
//

import UIKit

class DetailsViewController: UIViewController {
  
  
  @IBOutlet weak var displayText: UILabel!
  
  @IBOutlet weak var displayImage: UIImageView!
  
  var userName:String = "Jervo"
  var userButtonNum:Int = 0

    override func viewDidLoad() {
      super.viewDidLoad()

      // Do after loading.
      displayText.text = "Well, well, well " + userName
      displayText.text? += " likes button number " + String(userButtonNum)
      
      if userButtonNum == 0 {
        displayImage.image = UIImage(named: "Halo.jpg")
      } else {
        displayImage.image = UIImage(named: "Destiny.jpg")
      }
      
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
