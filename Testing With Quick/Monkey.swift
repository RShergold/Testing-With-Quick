//
//  Monkey.swift
//  Testing With Quick
//
//  Created by Hatch on 16/03/2015.
//  Copyright (c) 2015 Hatch. All rights reserved.
//

import Foundation

class Monkey {
  
  var name: String
  var silliness: Silliness
  
  enum Silliness {
    case NotSilly, VerySilly, ExtremelySilly
  }
  
  init(name:String, silliness:Silliness) {
    self.name = name
    self.silliness = silliness
  }
  
}

func silliest(monkeys: [Monkey]) -> [Monkey] {
  return monkeys.filter { $0.silliness == .VerySilly || $0.silliness == .ExtremelySilly }
}