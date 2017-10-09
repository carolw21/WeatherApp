//
//  ViewController.swift
//  WeatherApp
//
//  Created by Carol Wang on 10/8/17.
//  Copyright © 2017 MDB. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    var creditText: UIButton! //show credits to Dark Sky and link their website
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCreditText()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupCreditText() {
        creditText = UIButton(frame: CGRect(x: 0.5 * view.frame.width, y: 0.93 * view.frame.height, width: 0.5 * view.frame.width, height: 30))
        creditText.setTitle("Powered by Dark Sky", for: .normal)
        creditText.setTitleColor(UIColor(red: 0, green: 0, blue: 205/255, alpha: 1.0), for: .normal)
        creditText.backgroundColor = UIColor.clear
        creditText.addTarget(self, action: #selector(linkTo), for: .touchUpInside)
        view.addSubview(creditText)
    }
    
    @objc func linkTo() { //transitions to webview of dark sky
        self.performSegue(withIdentifier: "toWeb", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toWeb" {
            let webVC = segue.destination as! WebViewController
            webVC.url = "https://darksky.net/poweredby/"
        }
    }

}

