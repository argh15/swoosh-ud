//
//  SkillVC.swift
//  Swoosh
//
//  Created by Arghadeep  on 05/01/21.
//

import Foundation
import UIKit

class SkillVC: UIViewController {
    
    var player: Player?
    
    @IBOutlet weak var finishBtn: CustomButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginnerBtnAction(_ sender: Any) {
        setSkillData(.beginner)
    }
    
    @IBAction func ballerBtnAction(_ sender: Any) {
        setSkillData(.baller)
    }
    
    func setSkillData(_ type: SkillType) {
        player?.skillLevel = type
        finishBtn.isEnabled = true
    }
    
    @IBAction func finishBtnAction(_ sender: Any) {
        resultLabel.text = "Congratulations! You are a \(player?.skillLevel ?? .none) in \(player?.leagueType ?? .none) league."
        player = Player()
    }
}
