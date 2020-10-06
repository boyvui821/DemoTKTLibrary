//
//  ViewController.swift
//  DemoTKTLibrary
//
//  Created by Nguyen Hieu Trung on 10/6/20.
//  Copyright © 2020 NHTSOFT. All rights reserved.
//

import UIKit
import TKTLibrary

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let domain = "https://shrouded-brushlands-68077.herokuapp.com"
        let key = "NWY0N2FkMjg4ZjFiYmIwYWViZDBkNDdhXzU2Nzg5MTBfSG5mMlJRcDhMbkNuWWhBQw=="
        let email = "ktpm489@gmail.com"
        let config = TKTConfiguration(domain: domain,
                                      apiKey: key,
                                      email: email,
                                      language: TKTLanguage.VI)
        TKTCLoud.shared.setConfigure(configure: config)
    }
    
    @IBAction func onShowDemo(_ sender: Any) {
        let storyboardName = "Analysis"
        let storyboardBundle = Bundle(for: AnalysisViewController.self)
        let storyboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)

        let analysisStoryboard = UIStoryboard(name: storyboardName, bundle: storyboardBundle)
        let vc = analysisStoryboard.instantiateViewController(withIdentifier:  "AnalysisViewController")
        self.present(vc, animated: true, completion: nil)
    }
    


}

