//
//  SecondViewController.swift
//  To Do List
//
//  Created by Alper on 6/17/16.
//  Copyright © 2016 Alper. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    
    
    @IBOutlet weak var myItem: UITextField!
    
    
    @IBAction func addItem(_ sender: AnyObject?) {
        
        if (myItem.text != ""){
        
            toDoList.append(myItem.text!)
        
            myItem.text = ""
        
            UserDefaults.standard.set(toDoList, forKey: "toDoList")
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        self.myItem.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool{
        
        myItem.resignFirstResponder()
        
        addItem(nil)
        
        return true
        
    }
    
    
    
    
    
}

