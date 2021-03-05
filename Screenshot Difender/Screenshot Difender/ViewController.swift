//
//  ViewController.swift
//  Screenshot Difender
//
//  Created by 大野楓征 on 2021/03/03.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        NotificationCenter.default.addObserver(self, selector: #selector(didTakeScreenshot(notification:)), name:UIApplication.userDidTakeScreenshotNotification, object: nil)
    
    }
    
    @objc func didTakeScreenshot(notification:Notification){
        let alert = UIAlertController(title: "あきけんたろう", message: "そして父になる", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert,animated:true,completion: nil)
    }

}

