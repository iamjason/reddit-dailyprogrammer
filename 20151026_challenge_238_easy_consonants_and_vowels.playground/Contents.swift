// Solution for:
// https://www.reddit.com/r/dailyprogrammer/comments/3q9vpn/20151026_challenge_238_easy_consonants_and_vowels/

import UIKit

extension Array {
  func randomElement() -> Element {
    let index = Int(arc4random_uniform(UInt32(self.count)))
    return self[index]
  }
}

extension String {
  
  var randomWord:String {
    
    let vowels = ["a","e","i","o","u","y"]
    let consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
    
    let result =
    self.characters
      .map { (c) -> String in
        
        switch(c){
        case "v": return vowels.randomElement()
        case "V": return vowels.randomElement().uppercaseString
        case "c": return consonants.randomElement()
        case "C": return consonants.randomElement().uppercaseString
        default: return "_invalid_"
        }
        
      }
      .reduce("", combine: { $0 + $1 } )
    
    return result
    
  }
}

print("cvcvcc".randomWord)
print("CcvV".randomWord)
print("cvcvcvcvcvcvcvcvcvcv".randomWord)





