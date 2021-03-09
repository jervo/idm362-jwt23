//
//  StorageViewController.swift
//  idm362-jwt23
//
//  Created by Jervis Thompson on 3/8/21.
//

import UIKit

class StorageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
  
  @IBOutlet weak var tableView: UITableView!
  
  // Global Vars
  var fNames: [String] = ["Judith", "Jennifa", "John", "Joseph", "Jervis"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do after loading.
    title = "My Friends"
  }
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return fNames.count
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
    cell.textLabel?.text = fNames[indexPath.row]
    return cell
  }
  
  var selRowNum:Int = 0
  var selRowName:String = ""
  
  func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("Row selected \(indexPath.row)")
    selRowNum = indexPath.row
    selRowName = fNames[selRowNum]
  }
  
  func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
      if editingStyle == .delete {
        print("Delete row \(indexPath.row)")
        selRowNum = indexPath.row
        fNames.remove(at: selRowNum)
        // Reload table view
        tableView.reloadData()
      }
    }
  

  @IBAction func addName(_ sender: Any) {
    let alertObj = UIAlertController(title: "New Friend?", message: "Add a new name", preferredStyle: .alert)
    //
    alertObj.view.tintColor = UIColor.init(named: "AccentColor")
    //
    let saveAction = UIAlertAction(title: "Save", style: .default) {
      [unowned self] action in
      guard let textField = alertObj.textFields?.first,
        let nameToSave = textField.text else {
          return
      }
      self.fNames.append(nameToSave)
      
      self.tableView.reloadData()
    }
    //
    let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
    //
    alertObj.addTextField()
    //
    alertObj.addAction(saveAction)
    alertObj.addAction(cancelAction)
    //
    present(alertObj, animated: true)
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
