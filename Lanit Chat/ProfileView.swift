//
//  ProfileView.swift
//  Lanit Chat
//
//  Created by Никита on 10.04.2020.
//  Copyright © 2020 Nikita Glushchenko. All rights reserved.
//

import UIKit

class ProfileView: UIView {
    
    let profilePhoto: UIImageView = {
        let profilePhoto = UIImageView()
        profilePhoto.image = UIImage(named: "placeholder-user.png")
        profilePhoto.layer.borderWidth = 1
        profilePhoto.layer.cornerRadius = 25
        profilePhoto.clipsToBounds = true
        profilePhoto.translatesAutoresizingMaskIntoConstraints = false
        return profilePhoto
    }()
    
    let profilePhotoButton: UIImageView = {
        let profilePhotoButton = UIImageView()
        profilePhotoButton.contentMode = .scaleAspectFill
        profilePhotoButton.image = UIImage(named: "slr-camera-2-xxl.png")
        profilePhotoButton.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        profilePhotoButton.layer.cornerRadius = 25
        profilePhotoButton.clipsToBounds = true
        profilePhotoButton.layer.borderWidth = 1
        profilePhotoButton.translatesAutoresizingMaskIntoConstraints = false
        return profilePhotoButton
    }()
    
    let profileName: UILabel = {
        let profileName = UILabel()
        profileName.text = "Dmitry Yakovlev"
        profileName.textAlignment = .left
        profileName.font = .boldSystemFont(ofSize: 25)
        profileName.textColor = .black
        profileName.translatesAutoresizingMaskIntoConstraints = false
        return profileName
        }()
    
    let profileInfo: UITextView = {
        let profileInfo = UITextView()
        profileInfo.text = "Likes IOS Development and music."
        profileInfo.font = UIFont.systemFont(ofSize: 15)
        profileInfo.isEditable = false
        profileInfo.backgroundColor = .white
        profileInfo.textColor = .black
        profileInfo.translatesAutoresizingMaskIntoConstraints = false
        return profileInfo
    }()
    
    let editButton: UIButton = {
        let editButton = UIButton()
        editButton.setTitle("Редактировать", for: .normal)
        editButton.setTitleColor(.black, for: .normal)
        editButton.title(for: .normal)
        editButton.layer.borderWidth = 2
        editButton.layer.cornerRadius = 10
        editButton.translatesAutoresizingMaskIntoConstraints = false
        return editButton
    }()
    
    override init (frame : CGRect) {
        super.init(frame : frame)
        
        backgroundColor = UIColor.white
        
        addSubview(profilePhoto)
        addSubview(profilePhotoButton)
        addSubview(profileName)
        addSubview(profileInfo)
        addSubview(editButton)

        NSLayoutConstraint.activate([
            profilePhoto.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            profilePhoto.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profilePhoto.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            profilePhoto.heightAnchor.constraint(equalTo: profilePhoto.widthAnchor),
            
            //FIXME: сделать так чтобы изображение камеры не обрезалось(отредактировать в фотошопе или сделать программно)
            //TODO: 
            profilePhotoButton.trailingAnchor.constraint(equalTo: profilePhoto.trailingAnchor),
            profilePhotoButton.bottomAnchor.constraint(equalTo: profilePhoto.bottomAnchor),
            profilePhotoButton.heightAnchor.constraint(equalToConstant: 50),
            profilePhotoButton.widthAnchor.constraint(equalToConstant: 50),
            
            profileName.topAnchor.constraint(equalTo: profilePhoto.bottomAnchor, constant: 30),
            profileName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profileName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            profileName.heightAnchor.constraint(equalToConstant: 50),
            
            profileInfo.topAnchor.constraint(equalTo: profileName.bottomAnchor, constant: 20),
            profileInfo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            profileInfo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            profileInfo.heightAnchor.constraint(equalToConstant: 200),
            
            editButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            editButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
            editButton.heightAnchor.constraint(equalToConstant: 50),
            editButton.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -10),
        ])
    }
    
    convenience init () {
        self.init(frame:CGRect.zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
