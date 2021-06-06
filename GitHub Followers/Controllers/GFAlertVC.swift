//
//  GFAlertVC.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-06.
//

import UIKit

class GFAlertVC: UIViewController {

    let titleLabel = GFTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GFBodyLabel(textAlignment: .center)
    let actionButton = GFButton(backgroundColor: .systemPink, title: "OK")
    let containerView = GFAlertContainerView()
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    let padding: CGFloat = 20
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.75)
        configureContainerView()
        configureSubViews()
        
    }
    
    func configureContainerView() {
        view.addSubview(containerView)
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            containerView.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        containerView.setSubViews(titleLabel: titleLabel, messageLabel: messageLabel, actionButton: actionButton)
    }
    
    func configureSubViews() {
        titleLabel.text = alertTitle ?? "Something went wrong"
        
        actionButton.setTitle(buttonTitle ?? "OK", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        messageLabel.text = message ?? "Unable to complete request"
        messageLabel.numberOfLines = 4
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }

}
