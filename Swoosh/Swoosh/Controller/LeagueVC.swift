//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Arghadeep  on 05/01/21.
//

import Foundation
import UIKit

class LeagueVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func nextBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
}
