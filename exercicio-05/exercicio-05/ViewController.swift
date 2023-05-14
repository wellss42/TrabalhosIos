//
//  ViewController.swift
//  exercicio-05
//
//  Created by wellington martins on 11/05/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
     
     
     private var emoticons = ["😀", "😂", "😊", "🥰", "😎", "🤩", "🙌", "🎉", "🌟", "🍕"]
    
     private lazy var tableView: UITableView = {
          let table = UITableView()
          table.isScrollEnabled = false
          table.translatesAutoresizingMaskIntoConstraints = false
          return table
     }()

     override func viewDidLoad() {
          super.viewDidLoad()
          view.backgroundColor = .brown
          tableView.dataSource = self
          tableView.delegate = self
          setup()

          
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
         // Retorna o número de linhas na seção da tabela
          return emoticons.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
         // Cria ou recupera uma célula reutilizável para exibir os dados na linha atual
         let cell = tableView.dequeueReusableCell(withIdentifier: "myCellIdentifier", for: indexPath)
         
         // Configure a célula com os dados adequados
          cell.textLabel?.text = "\(indexPath.row): \(emoticons[indexPath.row])"
          cell.textLabel?.textAlignment = .center
         
         return cell
     }
     
     private func setup() {
          
          tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCellIdentifier")
          
          view.addSubview(tableView)
          
          tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
          tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
          tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
          tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
          
          
     }


}

