//
//  ViewController.swift
//  CustomTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblView: UITableView!
    var arraData:[AmazonModel] = [AmazonModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        arraData = AmazonData.getData()
    }


}
extension ViewController:UITableViewDataSource,UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        //return 0
        return 10 //this is animation test value
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arraData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:TableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.amazonView = arraData[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 110
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let details:DetalisViewController = storyboard?.instantiateViewController(withIdentifier: "DetalisViewController") as! DetalisViewController
        details.singleData = arraData[indexPath.row]
        self.navigationController?.pushViewController(details, animated: true)
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arraData.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        //Set intial cell
        cell.alpha = 0
        let transform = CATransform3DTranslate(CATransform3DIdentity, -250, 20, 0)
        cell.layer.transform = transform
        
        //Animation & final state
        UIView.animate(withDuration: 1.0) {
            cell.alpha = 1
            cell.layer.transform = CATransform3DIdentity
        }
    }
}

