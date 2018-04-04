//
//  ViewController.swift
//  loca
//
//  Created by AMIT IOS Developer on 4/4/18.
//  Copyright © 2018 com.AmitSoftware. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("meme".localizedStr(language: "en"))
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}

extension String {
    func localizedStr(language:String) -> String {
        let path = Bundle.main.path(forResource: language, ofType: "lproj")
        let bundleName = Bundle(path: path!)
        return NSLocalizedString(self, tableName: nil, bundle: bundleName!, value: "", comment: "")
        
    }
}

