//
//  ProfileViewController.swift
//  Lanit Chat
//
//  Created by Никита on 22.03.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController  {
    
    let profileView = ProfileView()
    
    func showAlertButtonTapped(_ sender: UIImageView) {
        let alert = UIAlertController(title: "Выберите фото", message: "Message", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Установить из галлереи", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Сделать фото", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(profileView)
        profileView.frame = view.bounds
        profileView.profilePhotoButton.addTapGestureRecognizer {
            self.showAlertButtonTapped(self.profileView.profilePhotoButton)
        }
    }
}

