//
//  Question.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/14/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell {
    
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
    public func configure(height: Int, width: Int) {
        questionResponse = UITextView.init(frame: CGRect(x: 0, y: 0, width: width, height: height))
    }

}
