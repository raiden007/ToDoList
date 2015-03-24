//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Andrei Joghiu on 24/3/15.
//  Copyright (c) 2015 Andrei Joghiu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    

    @IBOutlet var itemInsertTextField: UITextField!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.itemInsertTextField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func addItemButtonPressed(sender: UIButton) {
        toDoList.append(itemInsertTextField.text)
        itemInsertTextField.text = ""
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }

    
    func textFieldShouldReturn(textField: UITextField!) -> Bool {
  //      itemInsertTextField.resignFirstResponder()
        self.view.endEditing(true)
        return false;
    }

}

