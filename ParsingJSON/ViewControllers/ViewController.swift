//
//  ViewController.swift
//  ParsingJSON
//
//  Created by Anton Boev on 06.11.2022.
//

import UIKit

enum Link: String {
    case timerURL = "https://catchtheshow.herokuapp.com/api/this-is-us"
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        fetchShow()
    }
    
    private func fetchShow() {
        guard let url = URL(string: Link.timerURL.rawValue) else { return }
        
        URLSession.shared.dataTask(with: url) { data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "No error description")
                return
            }
            
            let decoder = JSONDecoder()
            do {
                let show = try decoder.decode(Catchtheshow.self, from: data)
                print(show)
            } catch let error {
                print(error.localizedDescription)
            }
            
        }.resume()
    }

}

