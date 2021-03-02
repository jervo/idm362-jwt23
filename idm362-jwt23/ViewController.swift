//
//  ViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 1/19/21.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var polarBearAnim: UIImageView!
  
  override func viewDidLoad() {
      super.viewDidLoad()
      // Do after loading.
    polarBearAnim.animationImages = loadImages(for: "PolarBearWalking")
    polarBearAnim.animationDuration = 2
    polarBearAnim.animationRepeatCount = 0
    polarBearAnim.image = polarBearAnim.animationImages?.first
    polarBearAnim.startAnimating()
  }
  
  func loadImages(for name: String) -> [UIImage] {
    print("Animated Images Loader called")
    var images = [UIImage]()
    var lp = 1
    print("image array before \(images)")
    while let image = UIImage(named: "\(name)/\(lp)") {
      images.append(image)
      lp += 1
    }
    print("image array after \(images)")
    return images
  }

}

