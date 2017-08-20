//
//  ViewController.swift
//  CoreProject
//
//  Created by ukgroupe on 8/20/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {
    @IBOutlet var label: UILabel!
    @IBOutlet var txt: UITextField!
    @IBOutlet var login: UIButton!
    @IBAction func loginAction(_ sender: Any) {
        let appdelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appdelegate.persistentContainer.viewContext
        let newuser = NSEntityDescription.insertNewObject(forEntityName: "Data", into: context)
        newuser.setValue(txt.text, forKey: "name")
        
        do{
            try context.save()
            label2.alpha = 1
            label2.text = "My name is " + txt.text! + "!"
            txt.alpha = 0
            login.alpha = 0
            logout.alpha = 1
            
        }catch{
            
            
        }
    }
    @IBOutlet var label2: UILabel!
    @IBOutlet var logout: UIButton!
    @IBAction func logout2(_ sender: Any) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

