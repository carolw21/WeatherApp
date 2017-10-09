//
//  WebViewController.swift
//  WeatherApp
//
//  Created by Carol Wang on 10/8/17.
//  Copyright © 2017 MDB. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    var url: String!
    var backButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        backButton = UIButton(frame: CGRect(x: 20, y: 25, width: 40, height: 30))
        backButton.setTitle("Back", for: .normal)
        backButton.setTitleColor(UIColor(red: 0, green: 0, blue: 205/255, alpha: 1.0), for: .normal)
        backButton.backgroundColor = UIColor.clear
        backButton.addTarget(self, action: #selector(goBack), for: .touchUpInside)
        view.addSubview(backButton)
        
        let myWebView: UIWebView = UIWebView(frame: CGRect(x: 0, y: 65, width: view.frame.width, height: view.frame.height - 75))
        let urlStr : NSString = url.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)! as NSString
        let searchURL : URL = URL(string: urlStr as String)!
        myWebView.loadRequest(URLRequest(url: searchURL))
        view.addSubview(myWebView)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func goBack() {
        self.dismiss(animated: true, completion: nil)
    }
    

}
