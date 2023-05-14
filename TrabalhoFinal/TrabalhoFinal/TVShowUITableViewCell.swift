//
//  TVShowUITableViewCell.swift
//  TrabalhoFinal
//
//  Created by wellington martins on 02/05/23.
//

import UIKit

class TVShowUITableViewCell: UITableViewCell {
     
     override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
          super.init(style: style, reuseIdentifier: reuseIdentifier)
          setup()
          
     }
     
     private func setup() {
          self.backgroundColor = .white
          self.textLabel?.textAlignment = .center
          
     }
     
     required init?(coder: NSCoder) {
          fatalError("init(coder:) has not been implemented")
     }
     
}
