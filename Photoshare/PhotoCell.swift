//
//  PhotoCell.swift
//  Photoshare
//
//  Created by Dylan Huang on 3/7/16.
//  Copyright © 2016 Dylan Huang. All rights reserved.
//

import UIKit
import Parse
import ParseUI

class PhotoCell: UITableViewCell {
    
    
    @IBOutlet weak var photoView: PFImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    var post: PFObject! {
        didSet{
            print("This cell has a PFObject named post")
            self.photoView.file = post["media"] as? PFFile
            self.captionLabel.text = post["caption"] as? String
            self.photoView.loadInBackground()
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
