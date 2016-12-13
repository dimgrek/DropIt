//
//  FallingObjectBehaviour.swift
//  DropIt
//
//  Created by Dmytro Hrek on 12/13/16.
//  Copyright © 2016 Dmytro Hrek. All rights reserved.
//

import UIKit

class FallingObjectBehavior: UIDynamicBehavior {
    private let gravity = UIGravityBehavior()
    
    
    
    private let collider: UICollisionBehavior = {
        let collider = UICollisionBehavior()
        collider.translatesReferenceBoundsIntoBoundary = true;
        return collider
    }()
    override init(){
        super.init()
        addChildBehavior(gravity)
        addChildBehavior(collider)
    }
    
    func addItem(item: UIDynamicItem){
        gravity.addItem(item)
        collider.addItem(item)
    }
    
    func removeItem(item: UIDynamicItem){
        gravity.removeItem(item)
        collider.removeItem(item)
    }
}
