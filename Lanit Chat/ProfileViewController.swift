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
                var pickedImage = false
                
                if UIImagePickerController.isSourceTypeAvailable(.camera) && !pickedImage {
                    let imagePickerController = UIImagePickerController()
                    imagePickerController.delegate = self
                    imagePickerController.sourceType = .camera
                    self.present(imagePickerController, animated: true, completion: nil)
                    pickedImage = true
                }
                
                func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
                    self.dismiss(animated: true, completion: nil)
                }
                
                func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
                       let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage
                    self.profileView.profilePhoto.image = image
                       self.dismiss(animated: true, completion: nil)
                }
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
        print("frame кнопки редактировать: \(profileView.editButton.frame)")
    }
}

