//
//  BananaTests.swift
//  Testing With Quick
//
//  Created by Hatch on 13/03/2015.
//  Copyright (c) 2015 Hatch. All rights reserved.
//

import Quick
import Nimble


class BananaSpec: QuickSpec {
  override func spec() {
    describe("a Banana") {
      
      it("should be edible only after peeling") {
        // Arrange: Create the banana we'll be peeling.
        let banana = Banana()
        
        // Act: Peel the banana.
        banana.peel()
        
        // Assert: Verify that the banana is now edible.
        expect(banana.isEdible).to(beTruthy())
      }
      
      
    }
  }
}