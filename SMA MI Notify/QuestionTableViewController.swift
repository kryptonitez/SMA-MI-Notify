//
//  QuestionTableViewController.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/14/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class QuestionTableViewController: UITableViewController {
    
    //MARK: Properties
   var questions = [FormData]()
    var stringPassed = ""
    var stringPAssedTest = "emergency management update"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
      // stringPassed = stringPAssedTest
        loadQuestions(questionvaluetoload: stringPassed)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {

        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
   
        return questions.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "QuestionTableViewCell"
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? QuestionTableViewCell else {
            fatalError("The dequeued cell is not an instance of QuestionCEll")
        }
        let formdata = questions[indexPath.row]
        
        cell.questionLabel.text = formdata.question
        cell.questionResponse.text = "Enter your response here"
        cell.questionResponse.textColor = UIColor.lightGray
        
        return cell
    }


    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    //MARK: Private Methods
    
    private func loadQuestions(questionvaluetoload: String) {
        let questionValueToLoad:String = questionvaluetoload
        
        switch questionValueToLoad {
            case "emergency management update":
           // Load questions
                guard let question1 = FormData(question: "Incident Description (summary): ", response: "placeholder text") else {
                    fatalError("Unable to instantiate question1")
                }
                
                guard let question2 = FormData(question: "Impacted services:", response: "placeholder text") else {
                    fatalError("Unable to instantiate question2")
                }
                
                guard let question3 = FormData(question: "Impacted locations or units:", response: "placeholder text") else {
                    fatalError("Unable to instantiate question2")
            }
             questions += [question1, question2, question3]
        case "emergency global update":
            //Load question
            
            guard let question1 = FormData(question: "Incident Description (summary): ", response: "placeholder text") else {
                fatalError("Unable to instantiate question1")
            }
            
            guard let question2 = FormData(question: "Impacted services:", response: "placeholder text") else {
                fatalError("Unable to instantiate question2")
            }
            
            guard let question3 = FormData(question: "Impacted locations or units:", response: "placeholder text") else {
                fatalError("Unable to instantiate question2")
            }
             questions += [question1, question2, question3]
            
        case "emergency meeting update":
            //Load question
            
            guard let question1 = FormData(question: "Incident Description (summary): ", response: "placeholder text") else {
                fatalError("Unable to instantiate question1")
            }
            
            guard let question2 = FormData(question: "Impacted services:", response: "placeholder text") else {
                fatalError("Unable to instantiate question2")
            }
            
            guard let question3 = FormData(question: "Impacted locations or units:", response: "placeholder text") else {
                fatalError("Unable to instantiate question2")
            }
            questions += [question1, question2, question3]
            
            default:
            //load question
                guard let question1 = FormData(question: "default ", response: "placeholder text") else {
                    fatalError("Unable to instantiate question1")
            }
            questions += [question1]
        }
    }
}
