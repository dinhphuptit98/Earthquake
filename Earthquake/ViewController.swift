//
//  ViewController.swift
//  Earthquake
//
//  Created by nguyendinhphu on 6/4/18.
//  Copyright © 2018 nguyendinhphu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var featuresUpdate : [Features] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self , selector: #selector(handler), name: Notification.Name.init("update"), object: nil)
        DataService.shared.getDataEarth()

        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func handler(){
        guard let earth = DataService.shared.earth else { return }
        featuresUpdate = earth.featuresArr
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

