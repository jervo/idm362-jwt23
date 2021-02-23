//
//  AboutViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 2/23/21.
//

import UIKit

class AboutViewController: UIViewController {

  @IBOutlet weak var FName: UITextField!
  
  override func viewDidLoad() {
      super.viewDidLoad()

      // Do after loading.
  }
  
  var whichButton:Int = 0
  
  @IBAction func HaloBtn(_ sender: Any) {
    whichButton = 0
  }
  
  @IBAction func DestinyBtn(_ sender: Any) {
    whichButton = 1
  }
  
  


  // MARK: - Navigation

  // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
    if segue.identifier == "showDetail" {
      let detailObj = segue.destination as! DetailsViewController
      detailObj.userName = FName.text!
      detailObj.userButtonNum = whichButton
    }
  }

}
