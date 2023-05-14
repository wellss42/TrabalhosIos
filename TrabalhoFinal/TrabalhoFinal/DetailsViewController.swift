//
//  DetailsViewController.swift
//  TrabalhoFinal
//
//  Created by wellington martins on 02/05/23.
//

import UIKit

class DetailsViewController: UIViewController {
     
     var data: String?
     
     private lazy var textLabel: UILabel = {
          let label = UILabel()
          label.text = ""
          label.font = .boldSystemFont(ofSize: 20)
          label.textAlignment = .center
          label.numberOfLines = 0
          label.translatesAutoresizingMaskIntoConstraints = false
          return label
     }()
     
     
     override func viewDidLoad() {
          view.backgroundColor = .darkGray
          setup()
          update()
     }
     
     private func update() {
          
          guard let dataString = data else {
               return
          }
          textLabel.text = dataString
     }
     
     private func setup(){
          
          view.addSubview(textLabel)
          
          textLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
          textLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
          textLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
          
     }
}
