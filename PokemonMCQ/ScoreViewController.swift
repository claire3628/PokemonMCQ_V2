//
//  ScoreViewController.swift
//  PokemonMCQ
//
//  Created by Claire Chang on 2025/4/8.
//

import UIKit

class ScoreViewController: UIViewController {

    
    @IBOutlet weak var levelLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    var score:Int!
    
    private var levelText:String {
        "\(score!)分"
    }
    
    private var titleText:String {
        if score >= 100 {
            return "寶可夢專家"
        } else if score >= 75 {
            return "寶可夢達人"
        } else if score >= 50 {
            return "寶可夢高手"
        } else if score >= 25 {
            return "寶可夢強者"
        } else if score >= 15 {
            return "寶可夢粉絲"
        } else {
            return "寶可夢陌生人"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        overrideUserInterfaceStyle = .light
        
        levelLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        levelLabel.text = levelText
        
        titleLabel.font = UIFont.systemFont(ofSize: 30, weight: .bold)
        titleLabel.text = titleText
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

//#Preview {
//    let storyboard = UIStoryboard(name: "Main", bundle: nil)
//    return storyboard.instantiateViewController(withIdentifier: "ScoreViewController")
//}
