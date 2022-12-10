//
//  ViewController.swift
//  Covid
//
//  Created by Bun on 2022/12/10.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let alert = UIAlertController(title: "hacked!!!", message: "127.0.0.1:8888", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "cancel", style: .cancel))
        present(alert, animated: true)
    }


}

