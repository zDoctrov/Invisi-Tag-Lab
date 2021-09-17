//
//  TagFilterController.swift
//  Invisi-Tag Lab
//
//  Created by Zachary Doctrove on 9/16/21.
//

import UIKit

class TagFilterController: UIViewController {
    
    @IBOutlet weak var tagTable: UITableView!
    
    var allTagCells: [TagCellProperties] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        allTagCells = createTags()
        
        tagTable.delegate = self
        tagTable.dataSource = self
    }
    
    func createTags() -> [TagCellProperties]{
        var tempTagCells: [TagCellProperties] = []
        
        let tag1 = TagCellProperties(tagTitle: "Bob's Lawnmower", tagQR: "00302302")
        let tag2 = TagCellProperties(tagTitle: "Ted's Hedge Clippers", tagQR: "30043551")
        let tag3 = TagCellProperties(tagTitle: "Carl's Wheelburrow", tagQR: "66310045")
        
        tempTagCells.append(tag1)
        tempTagCells.append(tag2)
        tempTagCells.append(tag3)
        
        return tempTagCells
    }
}

extension TagFilterController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  55
    }
    
}

extension TagFilterController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allTagCells.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let currentTag = allTagCells[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "tagCell") as! TagCell
        
        cell.setTagData(title: currentTag.tagTitle, QR: currentTag.tagQR)
        
        return cell
    }
    
    
}
