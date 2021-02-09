//
//  ViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 1/19/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var displayLabel: UILabel!
  @IBOutlet weak var nameText: UITextField!
  @IBOutlet weak var spinner: UIActivityIndicatorView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do after loading.
    
    displayLabel.text = "Loaded..."
  }

  @IBAction func clickMe(_ sender: Any) {
//    displayLabel.text = "Well Hello there."
    displayLabel.text = "Well Hello there \(nameText.text!)."
  }
  
  // Disable keyboard when user touched screen
  override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
    view.endEditing(true)
  }
  
  @IBAction func sliderMoving(_ sender: UISlider) {
    displayLabel.text = "Slider value is \(sender.value)"
  }
  
  @IBAction func spinSwitch(_ sender: UISwitch) {
    if (sender.isOn) {
      spinner.startAnimating()
    } else {
      spinner.stopAnimating()
    }
  }
  
  @IBAction func finishLine(_ sender: UISegmentedControl) {
    displayLabel.text = "You finished: \(sender.titleForSegment(at: sender.selectedSegmentIndex)!)"
  }
  
  
} // end ViewController

