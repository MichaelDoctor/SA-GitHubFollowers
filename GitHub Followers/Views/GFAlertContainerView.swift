//
//  GFAlertView.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-06.
//

import UIKit

class GFAlertContainerView: UIView {

    var titleLabel: GFTitleLabel?
    var messageLabel: GFBodyLabel?
    var actionButton: GFButton?
    var padding: CGFloat = 20
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setSubViews(titleLabel: GFTitleLabel, messageLabel: GFBodyLabel, actionButton: GFButton, padding: CGFloat = 20) {
        self.titleLabel = titleLabel
        self.messageLabel = messageLabel
        self.actionButton = actionButton
        self.padding = padding
        
        configureTitleLabel()
        configureActionButton()
        configureBodyLabel()
    }
    
    private func configure() {
        backgroundColor = .systemBackground
        layer.cornerRadius = 16
        layer.borderWidth = 2
        layer.borderColor = UIColor.white.cgColor
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}

//MARK: - Configure Views
extension GFAlertContainerView {
    func configureTitleLabel() {
        guard let titleLabel = titleLabel else { return }
        addSubview(titleLabel)
        
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            titleLabel.heightAnchor.constraint(equalToConstant: 28)
        ])
    }
    
    func configureActionButton() {
        guard let actionButton = actionButton else { return }
        addSubview(actionButton)
        
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding),
            actionButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            actionButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            actionButton.heightAnchor.constraint(equalToConstant: 44)
        ])
    }
    
    func configureBodyLabel() {
        guard let messageLabel = messageLabel, let titleLabel = titleLabel, let actionButton = actionButton else { return }
        self.addSubview(messageLabel)
        
        NSLayoutConstraint.activate([
            messageLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            messageLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            messageLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            messageLabel.bottomAnchor.constraint(equalTo: actionButton.topAnchor, constant: -12)
        ])
    }
}
