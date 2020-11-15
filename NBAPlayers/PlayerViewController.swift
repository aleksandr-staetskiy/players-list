//
//  PlayerViewController.swift
//  NBAPlayers
//
//  Created by Александр on 14.11.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class PlayerViewController: UIViewController {

    @IBOutlet weak var positionLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    
    var player: Playr?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = player?.name
        positionLabel.text = player?.positin
        heightLabel.text = player?.height
    }

}
