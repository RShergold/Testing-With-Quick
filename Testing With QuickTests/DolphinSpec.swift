//
//  DolphinSpec.swift
//  Testing With Quick
//
//  Created by Hatch on 13/03/2015.
//  Copyright (c) 2015 Hatch. All rights reserved.
//

import Quick
import Nimble


class DolphinSpec: QuickSpec {
  override func spec() {
    describe("a Dolphin") {
      
      var dolphin: Dolphin!
      beforeEach {
        dolphin = Dolphin()
      }
      
      it("is friendly") {
        expect(dolphin.isFriendly).to(beTrue())
      }
      
      it("is smart") {
        expect(dolphin.isSmart).to(beTrue())
      }
      
      
      describe("its click") {
        
        var click: Click!
        beforeEach {
          click = dolphin.click()
        }
        
        it("is loud") {
          expect(click.isLoud).to(beTrue())
        }
        it("has a high frequency") {
          expect(click.hasHighFrequency).to(beTrue())
        }
        
      }
      
      
    }
  }
}