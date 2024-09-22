//
//  GameViewController.swift
//  Jump
//
//  Created by Bhavya Patel on 2022-08-18.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let view = self.view as? SKView else {
            return
        }
        
        let scene = GameScene(size: CGSize(width: 1536, height: 2048))
        scene.scaleMode = .aspectFill
        
        view.ignoresSiblingOrder = true
        view.showsFPS = true
        view.showsNodeCount = true
        view.showsPhysics = true
        view.presentScene(scene)
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
