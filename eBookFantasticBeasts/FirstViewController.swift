//
//  FirstViewController.swift
//  TabbedBasedApp
//
//  Created by Shun-Ching, Chou on 2019/3/9.
//  Copyright © 2019 Shun-Ching, Chou. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    @IBOutlet weak var videoWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        loadYoutube(videoID: "Dd9BoJnZvuE")
    }
    
    func loadYoutube(videoID: String) {
        guard let youtubeURL = URL(string: "https://www.youtube.com/embed/\(videoID)")
            else { return }
        videoWebView.loadRequest(URLRequest(url: youtubeURL))
    }


}

