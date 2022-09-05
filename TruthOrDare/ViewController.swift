//
//  ViewController.swift
//  TruthOrDare
//
//  Created by Kazakov Danil on 05.09.2022.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        trueButton.layer.borderColor = UIColor.red.cgColor
        trueButton.layer.borderWidth = 4
        trueButton.layer.cornerRadius = 10
        
        let actionButton = UIButton()
        view.addSubview(actionButton)
        
        actionButton.layer.borderColor = UIColor.red.cgColor
        actionButton.layer.borderWidth = 4
        actionButton.layer.cornerRadius = 10
        
        
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -123 ),
            actionButton.widthAnchor.constraint(equalToConstant: 145),
            actionButton.heightAnchor.constraint(equalToConstant: 109)])
        
        
        actionButton.setTitle("Действие", for: .normal)
        actionButton.setTitleColor(.red, for: .normal)
        actionButton.setTitleColor(.orange, for: .highlighted)
        actionButton.showsTouchWhenHighlighted = true
        
        actionButton.addTarget(self, action: #selector(letAction), for: .touchUpInside)
    }
    

    
    @IBAction func trueAction(_ sender: Any) {
        titleLabel.text = Source.getInfo(type: .word)
    }
    
    @objc func letAction() {
        titleLabel.text = Source.getInfo(type: .action)
    }
    
}

