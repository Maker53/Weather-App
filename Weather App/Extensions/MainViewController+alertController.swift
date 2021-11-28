//
//  ViewController+alertController.swift
//  Weather App
//
//  Created by Станислав on 28.11.2021.
//

import UIKit

extension MainViewController {
    func presentSearchAlertController(withTitle title: String?, message: String?, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        alertController.addTextField { textField in
            textField.placeholder = ""
        }
        
        let search = UIAlertAction(title: "Search", style: .default) { Action in
            let textField = alertController.textFields?.first
            guard let cityName = textField?.text else { return }
            
            if cityName != "" {
                print("search info for the \(cityName)")
            }
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alertController.addAction(search)
        alertController.addAction(cancel)
        present(alertController, animated: true)
    }
}
