//
//  PlayerViewController.swift
//  NBAPlayers
//
//  Created by Александр on 09.11.2020.
//  Copyright © 2020 Александр. All rights reserved.
//

import UIKit

class PlayersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let players: [Playr] = [
        Playr(name: "Lebron James",
              height: "6'8",
              positin: "SE",
              teamName: "LA Lakers"
        ),
        Playr(name: "Lebron James",
              height: "6'8",
              positin: "SE",
              teamName: "LA Lakers"
        ),
        Playr(name: "Lebron James",
              height: "6'8",
              positin: "SE",
              teamName: "LA Lakers"
        ),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return players.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath)
        let player = players[indexPath.row]
        
        cell.textLabel?.text = player.name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: .main)
        
        let playerViewController = storyboard.instantiateViewController(identifier: "PlayerViewController")
        
        navigationController?.pushViewController(playerViewController, animated: true)
    }


}
