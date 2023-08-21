//
//  BooksTVC.swift
//  BookshelfExplorer
//
//  Created by Vikram Kunwar on 21/08/23.
//

import UIKit

class BooksTVC: UITableViewCell {
    
    @IBOutlet weak var Booktitle: UILabel!
    
    @IBOutlet weak var Bookauthor: UILabel!
    
    @IBOutlet weak var BookPublisher:UILabel!
    
    @IBOutlet weak var Bookdescription: UITextView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
