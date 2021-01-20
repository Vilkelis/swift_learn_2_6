//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Stepas Vilkelis on 12.01.2021.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit

@IBDesignable
class ProfileHeaderView: UIView {
    @IBInspectable var statusText: String = ""
    
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var fullNameLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!
    @IBOutlet weak var statusTextField: UITextField!
    @IBOutlet weak var setStatusButton: UIButton!
    
    @IBAction func setStatusButtonTouch(_ sender: UIButton) {
        statusLabel.text = statusText
    }
    
    @IBAction func statusTextFieldChanged(_ sender: UITextField) {
        statusText = sender.text ?? ""
    }
    
    override func layoutSubviews() {
        setupSubviews()
    }
    
    private func setupSubviews() {
        avatarImageView.layer.borderWidth = 3
        avatarImageView.layer.borderColor = UIColor.white.cgColor
        avatarImageView.layer.cornerRadius = avatarImageView.frame.height / 2
        avatarImageView.clipsToBounds = true
        
        fullNameLabel.font = .systemFont(ofSize: 18, weight: .bold)
        fullNameLabel.textColor = .black
        
        statusLabel.font = .systemFont(ofSize: 14)
        statusLabel.textColor = .gray
        
        statusTextField.placeholder = "New status text"
        statusTextField.font = .systemFont(ofSize: 15, weight: .regular)
        statusTextField.borderStyle = .roundedRect
        statusTextField.textColor = .black
        statusTextField.layer.borderWidth = 1
        statusTextField.layer.borderColor = UIColor.black.cgColor
        statusTextField.layer.cornerRadius = 12
        statusTextField.layer.masksToBounds = true
        statusTextField.backgroundColor = .white
        
        setStatusButton.setTitle("Set status", for: .normal)
        setStatusButton.setTitleColor(.white, for: .normal)
        setStatusButton.layer.cornerRadius = 4
        setStatusButton.clipsToBounds = true
        setStatusButton.layer.shadowColor = UIColor.black.cgColor
        setStatusButton.layer.shadowRadius = 4
        setStatusButton.layer.shadowOpacity = 0.7
        setStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        setStatusButton.backgroundColor = .systemBlue
        
        avatarImageView.image = UIImage(named: "hipster_cat")
        fullNameLabel.text = "Hipster cat"
        statusLabel.text = statusText
    }
}
