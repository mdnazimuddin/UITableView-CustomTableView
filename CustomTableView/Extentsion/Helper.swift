//
//  Helper.swift
//  CustomTableView
//
//  Created by Nazim Uddin on 6/8/19.
//  Copyright © 2019 Nazim Uddin. All rights reserved.
//

import UIKit

extension UIImageView{
    func circle(){
        self.layer.cornerRadius = self.layer.bounds.height / 2
        self.clipsToBounds = true
    }
}
