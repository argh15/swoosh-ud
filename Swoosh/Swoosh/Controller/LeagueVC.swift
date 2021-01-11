//
//  LeagueVC.swift
//  Swoosh
//
//  Created by Arghadeep  on 05/01/21.
//

import Foundation
import UIKit

class LeagueVC: UIViewController {
    
    var player: Player?
    @IBOutlet weak var nextBtn: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.player = Player()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        
    }
    
    @IBAction func nextBtnAction(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    @IBAction func mensBtnAction(_ sender: Any) {
        setLeagueData(.mens)
    }
    
    @IBAction func womensBtnAction(_ sender: Any) {
        setLeagueData(.womens)
    }
    
    @IBAction func coedBtnAction(_ sender: Any) {
        setLeagueData(.coed)
    }
    
    func setLeagueData(_ type: LeagueType) {
        player?.leagueType = type
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = self.player
        }
    }
}
