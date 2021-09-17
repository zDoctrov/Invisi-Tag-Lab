//
//  TagCell.swift
//  Invisi-Tag Lab
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class TagCell: UITableViewCell {
    @IBOutlet weak var tagTitle: UILabel!
    @IBOutlet weak var tagQR: UILabel!
    
    func setTagData(title: String, QR: String){
        tagTitle.text = title
        tagQR.text = QR
    }
    
}
