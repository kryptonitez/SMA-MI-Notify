//
//  MainViewController.swift
//  SMA MI Notify
//
//  Created by user136742 on 2/15/18.
//  Copyright © 2018 SMA. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var valueToLoad: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? QuestionTableViewController
        vc?.stringPassed = "emergency management update"
        
    }
    @IBAction func question1(_ sender: Any) {
        valueToLoad = "emergency management update"
       // let myVC = storyboard?.instantiateViewController(withIdentifier: "QuestionTableViewController") as! QuestionTableViewController
       let myVC =  QuestionTableViewController(nibName: "QuestionTableViewController", bundle: nil)
        myVC.stringPassed = valueToLoad
        navigationController?.pushViewController(myVC, animated: true)
    }
    
    @IBAction func question2(_ sender: Any) {
        valueToLoad = "emergency global update"
        let myVC = storyboard?.instantiateViewController(withIdentifier: "QuestionTableViewController") as! QuestionTableViewController
        myVC.stringPassed = valueToLoad
        navigationController?.pushViewController(myVC, animated: true)
        
    }
    
    @IBAction func question3(_ sender: Any) {
        valueToLoad = "emergency global update"
        let myVC = storyboard?.instantiateViewController(withIdentifier: "QuestionTableViewController") as! QuestionTableViewController
        myVC.stringPassed = valueToLoad
        navigationController?.pushViewController(myVC, animated: true)
    }
}
