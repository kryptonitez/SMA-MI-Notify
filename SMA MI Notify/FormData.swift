//
//  FormData.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/14/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class FormData {

//MARK:Properties

var question: String
var response: String
    
    //MARK: Initialization
    
    init?(question: String, response: String) {
    // Initialization should fail if there is no question
        
        if question.isEmpty {
            return nil
        }
        self.question = question
        self.response = response
    }

}
