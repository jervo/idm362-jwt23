//
//  ViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 1/19/21.
//

import UIKit
// Add Audio and Video library
import AVFoundation

var myAudioPlayerObj = AVAudioPlayer()

class ViewController: UIViewController {

    override func viewDidLoad() {
      super.viewDidLoad()
      // Do after loading.
      
      let mySound = Bundle.main.path(forResource: "sounds/halo1", ofType: "mp3")
      
      do {
        myAudioPlayerObj = try
        AVAudioPlayer(contentsOf: URL(fileURLWithPath: mySound!))
        myAudioPlayerObj.prepareToPlay()
        print("Sound file loaded and prepped")
      } catch {
        print(error)
      }
    } // viewDidLoad
  
  @IBAction func playStopHalo(_ sender: Any) {
    print("playStopHalo called")
    if (myAudioPlayerObj.isPlaying) {
      myAudioPlayerObj.stop()
    } else {
      myAudioPlayerObj.play()
    }
  }
  
  @IBAction func showAlert(_ sender: Any) {
    let myAlertObj = UIAlertController(title: "Delete All Records", message: "Are you Sure?", preferredStyle: .actionSheet)
    
    myAlertObj.addAction(UIAlertAction(title: "Hell Yea", style: .default, handler: {(UIAlertAction) in
        print("User wants to Delete all Records")
        // More code if needed
      }))
    
    myAlertObj.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: {(UIAlertAction) in
        print("User Canceled Alert")
        // More code if needed
      }))
    
    myAlertObj.view.tintColor = UIColor.init(named: "happy")
    
    self.present(myAlertObj, animated: true)
  }
  
  var toogleFlag: Bool = true
  
  @IBOutlet weak var peepBtn: UIButton!
  
  @IBAction func peepBtnFun(_ sender: Any) {
    if (toogleFlag == true) {
      peepBtn.tintColor = UIColor.init(named: "AccentColor")
      peepBtn.setBackgroundImage(UIImage(named: "people"), for: .normal)
      toogleFlag = false
    } else {
      peepBtn.tintColor = UIColor.init(named: "happy")
      peepBtn.setBackgroundImage(UIImage(named: "user_man_woman"), for: .normal)
      toogleFlag = true
    }
  }
  


} // ViewController

