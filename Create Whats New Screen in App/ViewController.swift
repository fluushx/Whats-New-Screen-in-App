//
//  ViewController.swift
//  Create Whats New Screen in App
//
//  Created by Felipe Ignacio Zapata Riffo on 02-09-21.
//

import UIKit
import WhatsNewKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setUpView()
    }
    
    func setUpView(){
        let items = WhatsNew(title: "What's New", items: [
            WhatsNew.Item(title: "Add Favorites",
                          subtitle: "Now you can add favorites in the app",
                          image: UIImage(systemName: "star")),
            WhatsNew.Item(title: "Volume",
                          subtitle: "You can control the volmen now!",
                          image: UIImage(systemName: "volume")),
            WhatsNew.Item(title: "Listen",
                          subtitle: "Listen to the tops songs in the app",
                          image: UIImage(systemName: "ear")),
            WhatsNew.Item(title: "Settings",
                          subtitle: "Control the quality of your music",
                          image: UIImage(systemName: "gear"))
        ])
        
        guard let vc = WhatsNewViewController(whatsNew: items,versionStore: KeyValueWhatsNewVersionStore()) else {
            return
        }
        
        vc.isModalInPresentation = true
        present(vc, animated: true)
    }
}

