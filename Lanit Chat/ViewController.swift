//
//  ViewController.swift
//  Lanit Chat
//
//  Created by Никита on 27.02.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print("Controller moving from 'Disappeared' to 'Appearing': \(#function)")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Controller moved from 'Disappeared' or 'Disappearing' to 'Appearing': \(#function)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("Controller moved from 'Appearing' to 'Appeared': \(#function)")
    }
    
    override func viewWillLayoutSubviews() {
        print("Controller method: \(#function)")
    }
    
    override func viewDidLayoutSubviews() {
        print("Controller method: \(#function)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("Controller moved from 'Appearing' or 'Appeared' to 'Disappearing': \(#function)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("Controller moved from 'Disappearing' to 'Disappeared': \(#function)")
    }
}

