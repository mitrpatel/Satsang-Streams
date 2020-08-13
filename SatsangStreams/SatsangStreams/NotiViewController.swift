//
//  NotiViewController.swift
//  SatsangStreams
//
//  Created by Mit Patel on 4/4/20.
//  Copyright © 2020 Mit Patel. All rights reserved.
//

import UIKit

class NotiViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func Back(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "main") as! ViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }
    
    /*// hello world
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
