//
//  DropItViewController.swift
//  DropIt
//
//  Created by Dmytro Hrek on 12/13/16.
//  Copyright © 2016 Dmytro Hrek. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController
{
    @IBOutlet weak var gameView: DropItView!{
        didSet{
            gameView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addDrop(recognizer:))))
        }
    }
    
    
    func addDrop(recognizer: UITapGestureRecognizer){
        if recognizer.state == .ended{
            gameView.addDrop()
        }
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        gameView.animating = false
    }
    
}


