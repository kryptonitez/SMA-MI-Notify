//
//  Question.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/14/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class QuestionTableViewCell: UITableViewCell, UITextViewDelegate {
    
    //MARK:Properties
  
   @IBOutlet weak var questionLabel: UILabel!
   @IBOutlet weak var questionResponse: UITextView!
    var placeholdertext = "true"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        questionResponse.delegate = self
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
        
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        if (placeholdertext == "true"){
        questionResponse.textColor = UIColor.black
        questionResponse.text = "";
        placeholdertext = "false"
        }
    }

}
