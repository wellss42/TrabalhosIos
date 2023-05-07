//
//  ViewController.swift
//  Exercicio-04
//
//  Created by wellington martins on 07/05/23.
//

import UIKit

class ViewController: UIViewController {
     
     private lazy var textLabel: UILabel = {
          let label = UILabel()
          label.text = "What do you want to learn"
          label.numberOfLines = 0
          label.textColor = .white
          label.textAlignment = .center
          label.font = .boldSystemFont(ofSize: 25)
          label.translatesAutoresizingMaskIntoConstraints = false
          return label
     }()
     
     private lazy var principalView: UIView = {
          let view = UIView()
          view.backgroundColor = .white
          view.layer.cornerRadius = 10
          view.layer.masksToBounds = true
          view.translatesAutoresizingMaskIntoConstraints = false
          return view
     }()
     
     private lazy var buttonChangeColor: UIButton = {
          let button = UIButton()
          button.setTitle("Change Backgound Color", for: .normal)
          button.backgroundColor = .blue
          button.titleLabel?.font = .boldSystemFont(ofSize: 14)
          button.layer.cornerRadius = 10
          button.layer.masksToBounds = true
          button.translatesAutoresizingMaskIntoConstraints = false
          button.addTarget(self, action: #selector(buttonToChangeColor), for: .touchUpInside)
          return button
     }()
     
     private lazy var buttonSecondScreen: UIButton = {
          let button = UIButton()
          button.setTitle("Go to second Screen", for: .normal)
          button.backgroundColor = .blue
          button.titleLabel?.font = .boldSystemFont(ofSize: 14)
          button.layer.cornerRadius = 10
          button.layer.masksToBounds = true
          button.translatesAutoresizingMaskIntoConstraints = false
          button.addTarget(self, action: #selector(buttonToSecondScreen), for: .touchUpInside)
          return button
     }()

     override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor = .purple
          setup()
     }
     
     @objc private func buttonToChangeColor() {
          view.backgroundColor = .brown
     }
     
     @objc private func buttonToSecondScreen() {
          self.navigationController?.pushViewController(SecondViewController(), animated: true)
     }
     
     private func setup() {
          
          view.addSubview(textLabel)
          view.addSubview(principalView)
          view.addSubview(buttonChangeColor)
          view.addSubview(buttonSecondScreen)
          
          textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 30).isActive = true
          textLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
          textLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
          
          principalView.heightAnchor.constraint(equalToConstant: 100).isActive = true
          principalView.widthAnchor.constraint(equalToConstant: 100).isActive = true
          principalView.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 30).isActive = true
          principalView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 80).isActive = true
          principalView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -80).isActive = true
          
          buttonChangeColor.topAnchor.constraint(equalTo: principalView.bottomAnchor, constant: 20).isActive = true
          buttonChangeColor.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
          buttonChangeColor.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
          
          buttonSecondScreen.topAnchor.constraint(equalTo: buttonChangeColor.bottomAnchor, constant: 20).isActive = true
          buttonSecondScreen.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
          buttonSecondScreen.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
          
          
     }


}

