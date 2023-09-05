//
//  ViewController.swift
//  BasicFormUI
//
//  Created by Biswajeet on 05/09/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    var labelDimension: CGRect?
    var userNameLabel: UILabel?
    var textFieldDimensions: CGRect?
    var passwordTextFiled: UITextField?
    var saveButtonDimensions: CGRect?
    var saveButton: UIButton?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        createUIthroughCode()
    }
    
    func createUIthroughCode() {
        labelDimension = CGRect(x: 50, y: 200, width: 300, height: 60)
        userNameLabel = UILabel(frame: labelDimension!)
        userNameLabel!.text = "Welcome to iOS"
        userNameLabel!.backgroundColor = .black
        userNameLabel!.textColor = .purple
        self.view.addSubview(userNameLabel!)
        
        
        textFieldDimensions = CGRect(x:50,
                                    y:320,
                                    width: Int((self.userNameLabel?.frame.width)!),
                                    height: Int((self.userNameLabel?.frame.height)!))
        
        passwordTextFiled = UITextField(frame: textFieldDimensions!)
        
        passwordTextFiled?.backgroundColor = .lightGray
        passwordTextFiled?.textColor = .brown
        passwordTextFiled?.placeholder = "Enter Password"
        self.view.addSubview(passwordTextFiled!)
        
        saveButtonDimensions = CGRect(x: 50, y: 420, width: Int((self.userNameLabel?.frame.width)!), height: Int((self.userNameLabel?.frame.height)!))
        
        saveButton = UIButton(frame: saveButtonDimensions!)
        
    }


}

