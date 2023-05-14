//
//  ViewController.swift
//  TrabalhoFinal
//
//  Created by wellington martins on 02/05/23.
//

import UIKit

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
     
     let series: [seriesViewModel] = [seriesViewModel(nome: "The Witcher", temporadas: "3", nota: "5"),
                           seriesViewModel(nome: "Broklym 99", temporadas: "8", nota: "5"),
                           seriesViewModel(nome: "Friends", temporadas: "10", nota: "4"),
                           seriesViewModel(nome: "Fundação", temporadas: "1", nota: "5"),
                           seriesViewModel(nome: "Invasão", temporadas: "1", nota: "5"),
                           seriesViewModel(nome: "Os anéis de poder", temporadas: "1", nota: "5"),
                           seriesViewModel(nome: "Ruptura", temporadas: "1", nota: "5"),

     ]
     
     private lazy var tableView: UITableView = {
          let table = UITableView()
          table.isScrollEnabled = false
          table.translatesAutoresizingMaskIntoConstraints = false
          return table
     }()
     
     override func viewDidLoad() {
          super.viewDidLoad()
          tableView.dataSource = self
          tableView.delegate = self
          setup()
     }
     
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          // Retorne o número de linhas que você deseja exibir
          return series.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          // Configura a célula
          let cell = TVShowUITableViewCell()
          cell.textLabel?.text = "\(series[indexPath.row].nome)"
          return cell
     }
     
     func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
          // Lidar com a seleção da célula aqui ao clicar em alguma celula
          tableView.deselectRow(at: indexPath, animated: true)
          let detailsView = DetailsViewController()
          detailsView.data = "A escolha da sua serie preferida é \(series[indexPath.row].nome), ela possue \(series[indexPath.row].temporadas) temporadas e sua avaliação é \(series[indexPath.row].nota)!"
          self.navigationController?.pushViewController(detailsView, animated: true)
     }
     
     private func setup() {
          
          tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
          
          view.addSubview(tableView)
          
          tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
          tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
          tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
          tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
          
          
     }
     
     
}

