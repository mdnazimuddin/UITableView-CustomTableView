//
//  DetalisViewController.swift
//  CustomTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class DetalisViewController: UIViewController {

    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    
    var imgView:UIImage!
    var lbl1Str:String!
    var lbl2Str:String!
    
    var singleData:AmazonModel!{
        didSet{
            imgView = singleData.img!
            lbl1Str = singleData.title!
            lbl2Str = singleData.details!
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        img.image = imgView
        lbl1.text = lbl1Str
        lbl2.text = lbl2Str
        // Do any additional setup after loading the view.
    }
    


}
