//
//  ProfileViewController.swift
//  Lanit Chat
//
//  Created by Никита on 22.03.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    fileprivate lazy var profilePhoto = UIImageView()
    fileprivate lazy var photoButton = UIButton()
    fileprivate lazy var profileInfo = UILabel()
    fileprivate lazy var editButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(profilePhoto)
        view.addSubview(photoButton)
        view.addSubview(profileInfo)
        view.addSubview(editButton)
    }
}
