//
//  MonkeySpec.swift
//  Testing With Quick
//
//  Created by Hatch on 16/03/2015.
//  Copyright (c) 2015 Hatch. All rights reserved.
//

import Quick
import Nimble


class MonkeySpec: QuickSpec {
  override func spec() {
    describe("a Monkey") {
      
      var monkey:Monkey!
      beforeEach {
        monkey = Monkey(name: "Pete", silliness: .ExtremelySilly)
      }
      
      it("should have a name") {
        expect(monkey.name).to(equal("Pete"))
      }
      
      it("should have a silliness level") {
        expect(monkey.silliness).to(equal(Monkey.Silliness.ExtremelySilly))
      }
      
    }
    
    describe("silliest monkeys") {
      
      it("should contain 'Kiki'") {
        let kiki = Monkey(name: "Kiki", silliness: .ExtremelySilly)
        let carl = Monkey(name: "Carl", silliness: .NotSilly)
        let jane = Monkey(name: "Jane", silliness: .VerySilly)
        let sillyMonkeys = silliest([kiki, carl, jane])
        expect(sillyMonkeys).to(contain(kiki))
      }
      
    }
    
  }
}