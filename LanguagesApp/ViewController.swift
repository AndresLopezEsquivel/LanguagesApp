//
//  ViewController.swift
//  LanguagesApp
//
//  Created by Andres Lopez Esquivel on 13/07/20.
//  Copyright © 2020 Andres Lopez Esquivel. All rights reserved.
//
//:)
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userPassword: UITextField!
    
    override func viewWillAppear(_ animated: Bool)
    {
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool)
    {
        navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        titleLabel.text = ""
        setTitle()
        setTextFieldProperties()
        
    }

    func setTitle()
    {
        let titleName = "LanguagesApp"
        var index = 0.0
        
        for letter in titleName
        {
            Timer.scheduledTimer(withTimeInterval: 0.09 * index, repeats: false, block: {(timer) in
                self.titleLabel.text?.append(letter)
            })
            
            index += 1
        }
    }

    func setTextFieldProperties()
    {
        userName.borderStyle = .none
        userPassword.borderStyle = .none
        
        userName.layoutIfNeeded()
        userPassword.layoutIfNeeded()
        
        let borderName = CALayer()
        let width = CGFloat(14.0)
        
        borderName.borderColor = UIColor.darkGray.cgColor
        
        borderName.frame = CGRect(x: 0, y: userName.frame.size.height - width, width: userName.frame.size.width, height: userName.frame.size.height)
        
        borderName.borderWidth = width
        
        userName.layer.addSublayer(borderName)
        userName.layer.masksToBounds = true
        
        let borderPassword = CALayer()
        let width2 = CGFloat(15.8)
        
        borderPassword.borderColor = UIColor.darkGray.cgColor
        
        borderPassword.frame = CGRect(x: 0, y: userPassword.frame.size.height - width2, width: userPassword.frame.size.width, height: userPassword.frame.size.height)
        
        borderPassword.borderWidth = width2
        
        userPassword.layer.addSublayer(borderPassword)
        userPassword.layer.masksToBounds = true
    }

}

