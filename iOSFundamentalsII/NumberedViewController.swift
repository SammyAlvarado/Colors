//
//  NumberedViewController.swift
//  iOSFundamentalsII
//
//  Created by Sammy Alvarado on 4/21/20.
//  Copyright © 2020 Sammy Alvarado. All rights reserved.
//

import UIKit

class NumberedViewController: UIViewController {

    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 160, height: 80))
    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(label)
        label.textColor = .white
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 64)
        label.center = view.center
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let number = navigationController?.viewControllers.count {
            label.text = String(number)
        }
    }
    
    @IBAction func doneButtonTapped(_ sender: Any) {
        // when presented modally
        // self.dismiss(animated: true)
        
        // Goes back on step in the stack
        //self.navigationController?.popViewController(animated: true)
        
        
        // Go back to Root VC -- first controller on stack (root view Controlller)
        self.navigationController?.popToRootViewController(animated: true)
        
    }
    

}
