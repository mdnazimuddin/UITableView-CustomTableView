//
//  AmazonData.swift
//  CustomTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

class AmazonData{
    static var arrayData:[AmazonModel] = [AmazonModel]()
    static func getData() -> [AmazonModel]! {
        arrayData = [
            AmazonModel(title: "T-Shart 1", details: "ARONG", img: UIImage(named: "t1.jpg")),
            AmazonModel(title: "T-Shart 2", details: "DARAZ", img: UIImage(named: "t2.jpg")),
            AmazonModel(title: "T-Shart 3", details: "MAN", img: UIImage(named: "t3.jpg")),
            AmazonModel(title: "T-Shart 4", details: "SELECON", img: UIImage(named: "t4.jpg")),
            AmazonModel(title: "T-Shart 5", details: "STAR", img: UIImage(named: "t5.jpg")),
            AmazonModel(title: "T-Shart 6", details: "FACT", img: UIImage(named: "t6.jpg")),
            AmazonModel(title: "T-Shart 7", details: "STYLE", img: UIImage(named: "t7.jpg")),
        ]
        return arrayData
    }
}
