//
//  ViewController.swift
//  AsynAPICAll
//
//  Created by CSS on 22/10/18.
//  Copyright © 2018 CSS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("First API CAll")
        Get_WebServices.getMethod(url_method: Url_Methods.shared.noticeList, completionHandle: {
            print("First API Call Received:- \($0)")
        })
        
        print("Second API CAll")
        Get_WebServices.getMethod(url_method: Url_Methods.shared.movieList, completionHandle: {
            print("Second API Call Received:- \($0)")
        })
        
        
        
    }


}

