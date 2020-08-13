//
//  ViewController.swift
//  SatsangStreams
//
//  Created by Mit Patel on 3/21/20.
//  Copyright © 2020 Mit Patel. All rights reserved.
//

import UIKit
import UserNotifications

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

            // The app is asking permission to send notifications here-----------------------------------------------------------------------
            let center = UNUserNotificationCenter.current()

            center.requestAuthorization(options: [.alert, .sound]) { (granted, error) in
                 func unregisterForRemoteNotifications()
                 {
                }}

            // Content of Notification-------------------------------------------------------------------------------------------------------
            let content = UNMutableNotificationContent()
            content.title = "Satsang Streams"
            content.body = "Puja starting now!!"

            // This is the time and date when the notification when the notification will pop up---------------------------------------------
        var dateComponents = DateComponents()
        dateComponents.weekday = 5 // Sun=1 Mon=2 Tues=3 Wed=4 Thus=5 Friday=6 Sat=7
        dateComponents.hour = 17
        dateComponents.minute = 27
    
            let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)

            // This is the request (creation)------------------------------------------------------------------------------------------------
            let uuidString = UUID().uuidString
            let request = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
            
            // Registration
            center.add(request) { (error) in
                
            }
        
        
        }
    
    @IBAction func Puja(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"http://live.baps.org")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Sabha(_ sender: UIButton) {
        UIApplication.shared.open(URL( string:"http://events.na.baps.org/satsangsabha")! as URL, options: [:], completionHandler: nil)
    }
    
    @IBAction func Aarti(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "centers") as! CentersViewController
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true)
    }


    }
    
    
