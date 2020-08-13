 //
//  CentersViewController.swift
//  SatsangStreams
//
//  Created by Mit Patel on 3/21/20.
//  Copyright © 2020 Mit Patel. All rights reserved.
//

import UIKit

class CentersViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func Atlanta(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/arti/atlanta.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Chicago(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/arti/chicago.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Houston(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/arti/houston.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func LA(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/arti/chicago.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Toronto(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/arti/toronto.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Robbinsville(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"https://events.na.baps.org/aarti/rbv.html")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Back(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "main") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    
    
 }
