//
//  Banana.swift
//  Testing With Quick
//
//  Created by Hatch on 13/03/2015.
//  Copyright (c) 2015 Hatch. All rights reserved.
//

import Foundation

/** A delicious banana. Tastes better if you peel it first. */
public class Banana {
    private var isPeeled = false
    
    /** Peels the banana. */
    public func peel() {
        isPeeled = true
    }
    
    /** You shouldn't eat a banana unless it's been peeled. */
    public var isEdible: Bool {
        return  isPeeled
    }
}