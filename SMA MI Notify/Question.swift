//
//  Question.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/14/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class Question: UITableViewCell {
    
    //MARK:Properties
    
   @IBOutlet weak var questionLabel: UILabel!
   @IBOutlet weak var questionResponse: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    
    //MARK:Private methods

}
