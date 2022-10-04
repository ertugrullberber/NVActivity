//
//  ViewController.swift
//  NVActivity
//
//  Created by Ertugrul Berber on 4.10.2022.
//

import UIKit
import NVActivityIndicatorView


class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func activityButton(_ sender: UIButton) {
        startAnimating()
    }
    fileprivate func startAnimating() {
        let loading = NVActivityIndicatorView(frame: .zero ,type: .ballRotateChase, color: .black, padding: 0)
        loading.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(loading)
        
        NSLayoutConstraint.activate([
            loading.widthAnchor.constraint(equalToConstant: 40),
            loading.heightAnchor.constraint(equalToConstant: 40), loading.centerYAnchor.constraint(equalTo: view.centerYAnchor), loading.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                                    ])
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2) {
            loading.startAnimating()
            
        }
        
    }


}

