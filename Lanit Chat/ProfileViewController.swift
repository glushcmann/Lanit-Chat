//
//  ProfileViewController.swift
//  Lanit Chat
//
//  Created by Никита on 22.03.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate  {
    
    let profileView = ProfileView()
    
    func showAlertButtonTapped(_ sender: UIImageView) {
        let alert = UIAlertController(title: "Выберите фото", message: "Message", preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Установить из галлереи", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Сделать фото", style: .default, handler: { (alert:UIAlertAction!) -> Void in
            if UIImagePickerController.isSourceTypeAvailable(.camera) {
                let imagePickerController = UIImagePickerController()
                imagePickerController.delegate = self;
                imagePickerController.sourceType = .camera
                self.present(imagePickerController, animated: true, completion: nil)
            }
        }))
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

