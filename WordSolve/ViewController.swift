//
//  ViewController.swift
//  WordSolve
//
//  Created by Craig Quinn on 19/01/2022.
//

import UIKit

class ViewController: UIViewController {
    
//    All images mapped
    
    
    @IBOutlet weak var headerLabel: UILabel!
    
    @IBOutlet weak var guess1_1: UIImageView!
    @IBOutlet weak var guess1_2: UIImageView!
    @IBOutlet weak var guess1_3: UIImageView!
    @IBOutlet weak var guess1_4: UIImageView!
    @IBOutlet weak var guess1_5: UIImageView!
    
    @IBOutlet weak var highlight1_1: UIImageView!
    @IBOutlet weak var highlight1_2: UIImageView!
    @IBOutlet weak var highlight1_3: UIImageView!
    @IBOutlet weak var highlight1_4: UIImageView!
    @IBOutlet weak var highlight1_5: UIImageView!
    
    @IBOutlet weak var guess2_1: UIImageView!
    @IBOutlet weak var guess2_2: UIImageView!
    @IBOutlet weak var guess2_3: UIImageView!
    @IBOutlet weak var guess2_4: UIImageView!
    @IBOutlet weak var guess2_5: UIImageView!
    
    @IBOutlet weak var highlight2_1: UIImageView!
    @IBOutlet weak var highlight2_2: UIImageView!
    @IBOutlet weak var highlight2_3: UIImageView!
    @IBOutlet weak var highlight2_4: UIImageView!
    @IBOutlet weak var highlight2_5: UIImageView!
    
    @IBOutlet weak var guess3_1: UIImageView!
    @IBOutlet weak var guess3_2: UIImageView!
    @IBOutlet weak var guess3_3: UIImageView!
    @IBOutlet weak var guess3_4: UIImageView!
    @IBOutlet weak var guess3_5: UIImageView!
    
    @IBOutlet weak var highlight3_1: UIImageView!
    @IBOutlet weak var highlight3_2: UIImageView!
    @IBOutlet weak var highlight3_3: UIImageView!
    @IBOutlet weak var highlight3_4: UIImageView!
    @IBOutlet weak var highlight3_5: UIImageView!
    
    @IBOutlet weak var guess4_1: UIImageView!
    @IBOutlet weak var guess4_2: UIImageView!
    @IBOutlet weak var guess4_3: UIImageView!
    @IBOutlet weak var guess4_4: UIImageView!
    @IBOutlet weak var guess4_5: UIImageView!
    
    @IBOutlet weak var highlight4_1: UIImageView!
    @IBOutlet weak var highlight4_2: UIImageView!
    @IBOutlet weak var highlight4_3: UIImageView!
    @IBOutlet weak var highlight4_4: UIImageView!
    @IBOutlet weak var highlight4_5: UIImageView!
    
    @IBOutlet weak var guess5_1: UIImageView!
    @IBOutlet weak var guess5_2: UIImageView!
    @IBOutlet weak var guess5_3: UIImageView!
    @IBOutlet weak var guess5_4: UIImageView!
    @IBOutlet weak var guess5_5: UIImageView!
    
    @IBOutlet weak var highlight5_1: UIImageView!
    @IBOutlet weak var highlight5_2: UIImageView!
    @IBOutlet weak var highlight5_3: UIImageView!
    @IBOutlet weak var highlight5_4: UIImageView!
    @IBOutlet weak var highlight5_5: UIImageView!
    
    @IBOutlet weak var guess6_1: UIImageView!
    @IBOutlet weak var guess6_2: UIImageView!
    @IBOutlet weak var guess6_3: UIImageView!
    @IBOutlet weak var guess6_4: UIImageView!
    @IBOutlet weak var guess6_5: UIImageView!
    
    @IBOutlet weak var highlight6_1: UIImageView!
    @IBOutlet weak var highlight6_2: UIImageView!
    @IBOutlet weak var highlight6_3: UIImageView!
    @IBOutlet weak var highlight6_4: UIImageView!
    @IBOutlet weak var highlight6_5: UIImageView!
    
    @IBOutlet weak var guess7_1: UIImageView!
    @IBOutlet weak var guess7_2: UIImageView!
    @IBOutlet weak var guess7_3: UIImageView!
    @IBOutlet weak var guess7_4: UIImageView!
    @IBOutlet weak var guess7_5: UIImageView!
    
    @IBOutlet weak var highlight7_1: UIImageView!
    @IBOutlet weak var highlight7_2: UIImageView!
    @IBOutlet weak var highlight7_3: UIImageView!
    @IBOutlet weak var highlight7_4: UIImageView!
    @IBOutlet weak var highlight7_5: UIImageView!
    
    @IBOutlet weak var guess8_1: UIImageView!
    @IBOutlet weak var guess8_2: UIImageView!
    @IBOutlet weak var guess8_3: UIImageView!
    @IBOutlet weak var guess8_4: UIImageView!
    @IBOutlet weak var guess8_5: UIImageView!
    
    @IBOutlet weak var highlight8_1: UIImageView!
    @IBOutlet weak var highlight8_2: UIImageView!
    @IBOutlet weak var highlight8_3: UIImageView!
    @IBOutlet weak var highlight8_4: UIImageView!
    @IBOutlet weak var highlight8_5: UIImageView!
    
    @IBOutlet weak var answer1: UIImageView!
    @IBOutlet weak var answer2: UIImageView!
    @IBOutlet weak var answer3: UIImageView!
    @IBOutlet weak var answer4: UIImageView!
    @IBOutlet weak var answer5: UIImageView!
    
    @IBOutlet weak var topLabel: UILabel!
    @IBOutlet weak var errorLabel: UILabel!
    
    @IBOutlet weak var newGame: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        codeGenerator()
        
    }
    
//    creating the name for where the selected letters will be located once the player selects enter
    
    
    
/*  The arrays where the players selections will be saved
    This will be reset to the below at the start of each game
 */
    
    var firstAnswer = [#imageLiteral(resourceName: "textRing")]
    var secondAnswer = [#imageLiteral(resourceName: "textRing")]
    var thirdAnswer = [#imageLiteral(resourceName: "textRing")]
    var fourthAnswer = [#imageLiteral(resourceName: "textRing")]
    var fifthAnswer = [#imageLiteral(resourceName: "textRing")]
    var sixthAnswer = [#imageLiteral(resourceName: "textRing")]
    var seventhAnswer = [#imageLiteral(resourceName: "textRing")]
    var eightAnswer = [#imageLiteral(resourceName: "textRing")]
    var thisSession = 0
/*    Used to dictate and understand where each entry will go. (0 = Entry 1, 1 = Entry 2 ect..) */
    
    var Tries = 0
    var correctAnswer = 0
    
    func yourGuess() {
        
/*/        First Guess. This code will tell the app what to display depending on what letters you press. It takes the number of images in the cell and according to that number it will poplulate the images on the app screen */
        
        if firstAnswer.count == 1 {
            guess1_1.image = firstAnswer[0]
            guess1_2.image = firstAnswer[0]
            guess1_3.image = firstAnswer[0]
            guess1_4.image = firstAnswer[0]
            guess1_5.image = firstAnswer[0]
        }else if
            firstAnswer.count == 2 {
            guess1_1.image = firstAnswer[1]
            guess1_2.image = firstAnswer[0]
            guess1_3.image = firstAnswer[0]
            guess1_4.image = firstAnswer[0]
            guess1_5.image = firstAnswer[0]
        }else if
            firstAnswer.count == 3 {
            guess1_1.image = firstAnswer[1]
            guess1_2.image = firstAnswer[2]
            guess1_3.image = firstAnswer[0]
            guess1_4.image = firstAnswer[0]
            guess1_5.image = firstAnswer[0]
        }else if
            firstAnswer.count == 4 {
            guess1_1.image = firstAnswer[1]
            guess1_2.image = firstAnswer[2]
            guess1_3.image = firstAnswer[3]
            guess1_4.image = firstAnswer[0]
            guess1_5.image = firstAnswer[0]
        }else if
            firstAnswer.count == 5 {
            guess1_1.image = firstAnswer[1]
            guess1_2.image = firstAnswer[2]
            guess1_3.image = firstAnswer[3]
            guess1_4.image = firstAnswer[4]
            guess1_5.image = firstAnswer[0]
        }else if
            firstAnswer.count == 6 {
            guess1_1.image = firstAnswer[1]
            guess1_2.image = firstAnswer[2]
            guess1_3.image = firstAnswer[3]
            guess1_4.image = firstAnswer[4]
            guess1_5.image = firstAnswer[5]
        }else
        {}
        if secondAnswer.count == 1 {
            guess2_1.image = secondAnswer[0]
            guess2_2.image = secondAnswer[0]
            guess2_3.image = secondAnswer[0]
            guess2_4.image = secondAnswer[0]
            guess2_5.image = secondAnswer[0]
        }else if
            secondAnswer.count == 2 {
            guess2_1.image = secondAnswer[1]
            guess2_2.image = secondAnswer[0]
            guess2_3.image = secondAnswer[0]
            guess2_4.image = secondAnswer[0]
            guess2_5.image = secondAnswer[0]
        }else if
            secondAnswer.count == 3 {
            guess2_1.image = secondAnswer[1]
            guess2_2.image = secondAnswer[2]
            guess2_3.image = secondAnswer[0]
            guess2_4.image = secondAnswer[0]
            guess2_5.image = secondAnswer[0]
        }else if
            secondAnswer.count == 4 {
            guess2_1.image = secondAnswer[1]
            guess2_2.image = secondAnswer[2]
            guess2_3.image = secondAnswer[3]
            guess2_4.image = secondAnswer[0]
            guess2_5.image = secondAnswer[0]
                
        }else if
            secondAnswer.count == 5 {
            guess2_1.image = secondAnswer[1]
            guess2_2.image = secondAnswer[2]
            guess2_3.image = secondAnswer[3]
            guess2_4.image = secondAnswer[4]
            guess2_5.image = secondAnswer[0]
        }else if
            secondAnswer.count == 6 {
            guess2_1.image = secondAnswer[1]
            guess2_2.image = secondAnswer[2]
            guess2_3.image = secondAnswer[3]
            guess2_4.image = secondAnswer[4]
            guess2_5.image = secondAnswer[5]
        }else
        {}
        if thirdAnswer.count == 1 {
            guess3_1.image = thirdAnswer[0]
            guess3_2.image = thirdAnswer[0]
            guess3_3.image = thirdAnswer[0]
            guess3_4.image = thirdAnswer[0]
            guess3_5.image = thirdAnswer[0]
        }else if
            thirdAnswer.count == 2 {
            guess3_1.image = thirdAnswer[1]
            guess3_2.image = thirdAnswer[0]
            guess3_3.image = thirdAnswer[0]
            guess3_4.image = thirdAnswer[0]
            guess3_5.image = thirdAnswer[0]
        }else if
            thirdAnswer.count == 3 {
            guess3_1.image = thirdAnswer[1]
            guess3_2.image = thirdAnswer[2]
            guess3_3.image = thirdAnswer[0]
            guess3_4.image = thirdAnswer[0]
            guess3_5.image = thirdAnswer[0]
        }else if
            thirdAnswer.count == 4 {
            guess3_1.image = thirdAnswer[1]
            guess3_2.image = thirdAnswer[2]
            guess3_3.image = thirdAnswer[3]
            guess3_4.image = thirdAnswer[0]
            guess3_5.image = thirdAnswer[0]
        }else if
            thirdAnswer.count == 5 {
            guess3_1.image = thirdAnswer[1]
            guess3_2.image = thirdAnswer[2]
            guess3_3.image = thirdAnswer[3]
            guess3_4.image = thirdAnswer[4]
            guess3_5.image = thirdAnswer[0]
        }else if
            thirdAnswer.count == 6 {
            guess3_1.image = thirdAnswer[1]
            guess3_2.image = thirdAnswer[2]
            guess3_3.image = thirdAnswer[3]
            guess3_4.image = thirdAnswer[4]
            guess3_5.image = thirdAnswer[5]
        }else
        {}
        if fourthAnswer.count == 1 {
            guess4_1.image = fourthAnswer[0]
            guess4_2.image = fourthAnswer[0]
            guess4_3.image = fourthAnswer[0]
            guess4_4.image = fourthAnswer[0]
            guess4_5.image = fourthAnswer[0]
        }else if
            fourthAnswer.count == 2 {
            guess4_1.image = fourthAnswer[1]
            guess4_2.image = fourthAnswer[0]
            guess4_3.image = fourthAnswer[0]
            guess4_4.image = fourthAnswer[0]
            guess4_5.image = fourthAnswer[0]
        }else if
            fourthAnswer.count == 3 {
            guess4_1.image = fourthAnswer[1]
            guess4_2.image = fourthAnswer[2]
            guess4_3.image = fourthAnswer[0]
            guess4_4.image = fourthAnswer[0]
            guess4_5.image = fourthAnswer[0]
        }else if
            fourthAnswer.count == 4 {
            guess4_1.image = fourthAnswer[1]
            guess4_2.image = fourthAnswer[2]
            guess4_3.image = fourthAnswer[3]
            guess4_4.image = fourthAnswer[0]
            guess4_5.image = fourthAnswer[0]
        }else if
            fourthAnswer.count == 5 {
            guess4_1.image = fourthAnswer[1]
            guess4_2.image = fourthAnswer[2]
            guess4_3.image = fourthAnswer[3]
            guess4_4.image = fourthAnswer[4]
            guess4_5.image = fourthAnswer[0]
        }else if
            fourthAnswer.count == 6 {
            guess4_1.image = fourthAnswer[1]
            guess4_2.image = fourthAnswer[2]
            guess4_3.image = fourthAnswer[3]
            guess4_4.image = fourthAnswer[4]
            guess4_5.image = fourthAnswer[5]
        }else
        {}
        if fifthAnswer.count == 1 {
            guess5_1.image = fifthAnswer[0]
            guess5_2.image = fifthAnswer[0]
            guess5_3.image = fifthAnswer[0]
            guess5_4.image = fifthAnswer[0]
            guess5_5.image = fifthAnswer[0]
        }else if
            fifthAnswer.count == 2 {
            guess5_1.image = fifthAnswer[1]
            guess5_2.image = fifthAnswer[0]
            guess5_3.image = fifthAnswer[0]
            guess5_4.image = fifthAnswer[0]
            guess5_5.image = fifthAnswer[0]
        }else if
            fifthAnswer.count == 3 {
            guess5_1.image = fifthAnswer[1]
            guess5_2.image = fifthAnswer[2]
            guess5_3.image = fifthAnswer[0]
            guess5_4.image = fifthAnswer[0]
            guess5_5.image = fifthAnswer[0]
        }else if
            fifthAnswer.count == 4 {
            guess5_1.image = fifthAnswer[1]
            guess5_2.image = fifthAnswer[2]
            guess5_3.image = fifthAnswer[3]
            guess5_4.image = fifthAnswer[0]
            guess5_5.image = fifthAnswer[0]
        }else if
            fifthAnswer.count == 5 {
            guess5_1.image = fifthAnswer[1]
            guess5_2.image = fifthAnswer[2]
            guess5_3.image = fifthAnswer[3]
            guess5_4.image = fifthAnswer[4]
            guess5_5.image = fifthAnswer[0]
        }else if
            fifthAnswer.count == 6 {
            guess5_1.image = fifthAnswer[1]
            guess5_2.image = fifthAnswer[2]
            guess5_3.image = fifthAnswer[3]
            guess5_4.image = fifthAnswer[4]
            guess5_5.image = fifthAnswer[5]
        }else
        {}
        if sixthAnswer.count == 1 {
            guess6_1.image = sixthAnswer[0]
            guess6_2.image = sixthAnswer[0]
            guess6_3.image = sixthAnswer[0]
            guess6_4.image = sixthAnswer[0]
            guess6_5.image = sixthAnswer[0]
        }else if
            sixthAnswer.count == 2 {
            guess6_1.image = sixthAnswer[1]
            guess6_2.image = sixthAnswer[0]
            guess6_3.image = sixthAnswer[0]
            guess6_4.image = sixthAnswer[0]
            guess6_5.image = sixthAnswer[0]
        }else if
            sixthAnswer.count == 3 {
            guess6_1.image = sixthAnswer[1]
            guess6_2.image = sixthAnswer[2]
            guess6_3.image = sixthAnswer[0]
            guess6_4.image = sixthAnswer[0]
            guess6_5.image = sixthAnswer[0]
        }else if
            sixthAnswer.count == 4 {
            guess6_1.image = sixthAnswer[1]
            guess6_2.image = sixthAnswer[2]
            guess6_3.image = sixthAnswer[3]
            guess6_4.image = sixthAnswer[0]
            guess6_5.image = sixthAnswer[0]
                
        }else if
            sixthAnswer.count == 5 {
            guess6_1.image = sixthAnswer[1]
            guess6_2.image = sixthAnswer[2]
            guess6_3.image = sixthAnswer[3]
            guess6_4.image = sixthAnswer[4]
            guess6_5.image = sixthAnswer[0]
        }else if
            sixthAnswer.count == 6 {
            guess6_1.image = sixthAnswer[1]
            guess6_2.image = sixthAnswer[2]
            guess6_3.image = sixthAnswer[3]
            guess6_4.image = sixthAnswer[4]
            guess6_5.image = sixthAnswer[5]
        }else
        {}
        if seventhAnswer.count == 1 {
            guess7_1.image = seventhAnswer[0]
            guess7_2.image = seventhAnswer[0]
            guess7_3.image = seventhAnswer[0]
            guess7_4.image = seventhAnswer[0]
            guess7_5.image = seventhAnswer[0]
        }else if
            seventhAnswer.count == 2 {
            guess7_1.image = seventhAnswer[1]
            guess7_2.image = seventhAnswer[0]
            guess7_3.image = seventhAnswer[0]
            guess7_4.image = seventhAnswer[0]
            guess7_5.image = seventhAnswer[0]
        }else if
            seventhAnswer.count == 3 {
            guess7_1.image = seventhAnswer[1]
            guess7_2.image = seventhAnswer[2]
            guess7_3.image = seventhAnswer[0]
            guess7_4.image = seventhAnswer[0]
            guess7_5.image = seventhAnswer[0]
        }else if
            seventhAnswer.count == 4 {
            guess7_1.image = seventhAnswer[1]
            guess7_2.image = seventhAnswer[2]
            guess7_3.image = seventhAnswer[3]
            guess7_4.image = seventhAnswer[0]
            guess7_5.image = seventhAnswer[0]
                
        }else if
            seventhAnswer.count == 5 {
            guess7_1.image = seventhAnswer[1]
            guess7_2.image = seventhAnswer[2]
            guess7_3.image = seventhAnswer[3]
            guess7_4.image = seventhAnswer[4]
            guess7_5.image = seventhAnswer[0]
        }else if
            seventhAnswer.count == 6 {
            guess7_1.image = seventhAnswer[1]
            guess7_2.image = seventhAnswer[2]
            guess7_3.image = seventhAnswer[3]
            guess7_4.image = seventhAnswer[4]
            guess7_5.image = seventhAnswer[5]
        }else
        {}
        if eightAnswer.count == 1 {
            guess8_1.image = eightAnswer[0]
            guess8_2.image = eightAnswer[0]
            guess8_3.image = eightAnswer[0]
            guess8_4.image = eightAnswer[0]
            guess8_5.image = eightAnswer[0]
        }else if
            eightAnswer.count == 2 {
            guess8_1.image = eightAnswer[1]
            guess8_2.image = eightAnswer[0]
            guess8_3.image = eightAnswer[0]
            guess8_4.image = eightAnswer[0]
            guess8_5.image = eightAnswer[0]
        }else if
            eightAnswer.count == 3 {
            guess8_1.image = eightAnswer[1]
            guess8_2.image = eightAnswer[2]
            guess8_3.image = eightAnswer[0]
            guess8_4.image = eightAnswer[0]
            guess8_5.image = eightAnswer[0]
        }else if
            eightAnswer.count == 4 {
            guess8_1.image = eightAnswer[1]
            guess8_2.image = eightAnswer[2]
            guess8_3.image = eightAnswer[3]
            guess8_4.image = eightAnswer[0]
            guess8_5.image = eightAnswer[0]
        }else if
            eightAnswer.count == 5 {
            guess8_1.image = eightAnswer[1]
            guess8_2.image = eightAnswer[2]
            guess8_3.image = eightAnswer[3]
            guess8_4.image = eightAnswer[4]
            guess8_5.image = eightAnswer[0]
        }else if
            eightAnswer.count == 6 {
            guess8_1.image = eightAnswer[1]
            guess8_2.image = eightAnswer[2]
            guess8_3.image = eightAnswer[3]
            guess8_4.image = eightAnswer[4]
            guess8_5.image = eightAnswer[5]
        }else
        {}
    }
    
    let contents =  [#imageLiteral(resourceName: "A"), #imageLiteral(resourceName: "B"), #imageLiteral(resourceName: "C"), #imageLiteral(resourceName: "D"), #imageLiteral(resourceName: "E"), #imageLiteral(resourceName: "F"), #imageLiteral(resourceName: "G"), #imageLiteral(resourceName: "H"), #imageLiteral(resourceName: "I"), #imageLiteral(resourceName: "J"), #imageLiteral(resourceName: "K"), #imageLiteral(resourceName: "L"), #imageLiteral(resourceName: "M"), #imageLiteral(resourceName: "N"), #imageLiteral(resourceName: "O"), #imageLiteral(resourceName: "P"), #imageLiteral(resourceName: "Q"), #imageLiteral(resourceName: "R"), #imageLiteral(resourceName: "S"), #imageLiteral(resourceName: "T"), #imageLiteral(resourceName: "U"), #imageLiteral(resourceName: "V"), #imageLiteral(resourceName: "W"), #imageLiteral(resourceName: "X"), #imageLiteral(resourceName: "Y"), #imageLiteral(resourceName: "Z")]
    
    
    func codeGenerator() {
    
        let code = contents.shuffled()
         
        answer1.image = code[0]
        answer1.alpha = 1
        answer2.image = code[1]
        answer2.alpha = 1
        answer3.image = code[2]
        answer3.alpha = 1
        answer4.image = code[3]
        answer4.alpha = 1
        answer5.image = code[4]
        answer5.alpha = 1

    }

    @IBAction func qPressed(_ sender: Any) {
        
        let currentLetter = #imageLiteral(resourceName: "Q")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func wPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "W")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func ePressed(_ sender: Any) {
        
        let currentLetter = #imageLiteral(resourceName: "E")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func rPressed(_ sender: UIButton) {
    
        let currentLetter = #imageLiteral(resourceName: "R")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func tPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "T")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func yPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "Y")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func uPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "U")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func iPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "I")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func oPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "O")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func pPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "P")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func aPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "A")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func sPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "S")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func dPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "D")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func fPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "F")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func gPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "G")
        
        errorLabel.alpha = 0
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func hPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "H")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func jPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "J")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func kPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "K")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
        
    }
    
    @IBAction func lPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "L")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func zPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "Z")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func xpressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "X")
        
        errorLabel.alpha = 0
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func cPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "C")
        
        errorLabel.alpha = 0
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func vPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "V")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func bPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "B")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func nPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "N")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func mPressed(_ sender: Any) {
        let currentLetter = #imageLiteral(resourceName: "M")
        
        errorLabel.alpha = 0
        
        if firstAnswer.count < 6 {
            firstAnswer.append(currentLetter)
        }else if secondAnswer.count < 6 && Tries == 1 {
            secondAnswer.append(currentLetter)
        }else if thirdAnswer.count < 6 && Tries == 2 {
            thirdAnswer.append(currentLetter)
        }else if fourthAnswer.count < 6 && Tries == 3 {
            fourthAnswer.append(currentLetter)
        }else if fifthAnswer.count < 6 && Tries == 4 {
            fifthAnswer.append(currentLetter)
        }else if sixthAnswer.count < 6 && Tries == 5 {
            sixthAnswer.append(currentLetter)
        }else if seventhAnswer.count < 6 && Tries == 6 {
            seventhAnswer.append(currentLetter)
        }else if eightAnswer.count < 6 && Tries == 7 {
            eightAnswer.append(currentLetter)
        }else {errorLabel.text = "Submit or Delete Answer"
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    @IBAction func delPressed(_ sender: Any) {
        
        errorLabel.alpha = 0
        
        if Tries == 7 && eightAnswer.count > 1 {
            eightAnswer.removeLast()
        }else if Tries == 6 && seventhAnswer.count > 1 {
            seventhAnswer.removeLast()
        }else if Tries == 5 && sixthAnswer.count > 1 {
            sixthAnswer.removeLast()
        }else if Tries == 4 && fifthAnswer.count > 1 {
            fifthAnswer.removeLast()
        }else if Tries == 3 && fourthAnswer.count > 1 {
            fourthAnswer.removeLast()
        }else if Tries == 2 && thirdAnswer.count > 1 {
            thirdAnswer.removeLast()
        }else if Tries == 1 && secondAnswer.count > 1 {
            secondAnswer.removeLast()
        }else if Tries == 0 && firstAnswer.count > 1 {
            firstAnswer .removeLast()
        }else { errorLabel.text = ""
            errorLabel.alpha = 1
        }
        yourGuess()
    }
    
    
    
    
    func checkerGuessOne() {
        
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess1_1.image == answer1.image {
            highlight1_1.image = correct
        }else if guess1_1.image == answer2.image || guess1_1.image == answer3.image || guess1_1.image == answer4.image || guess1_1.image == answer5.image {
            highlight1_1.image = wrongPosition
        }else
        { highlight1_1.image = incorrect
            
        }
        if guess1_2.image == answer2.image {
            highlight1_2.image = correct
        }else if guess1_2.image == answer1.image || guess1_2.image == answer3.image || guess1_2.image == answer4.image || guess1_2.image == answer5.image {
            highlight1_2.image = wrongPosition
        }else
        { highlight1_2.image = incorrect
            
        }
        if guess1_3.image == answer3.image {
            highlight1_3.image = correct
        }else if guess1_3.image == answer2.image || guess1_3.image == answer1.image || guess1_3.image == answer4.image || guess1_3.image == answer5.image {
            highlight1_3.image = wrongPosition
        }else
        { highlight1_3.image = incorrect
            
        }
        if guess1_4.image == answer4.image {
            highlight1_4.image = correct
        }else if guess1_4.image == answer2.image || guess1_4.image == answer3.image || guess1_4.image == answer1.image || guess1_4.image == answer5.image {
            highlight1_4.image = wrongPosition
        }else
        { highlight1_4.image = incorrect
            
        }
        if guess1_5.image == answer5.image {
            highlight1_5.image = correct
        }else if guess1_5.image == answer2.image || guess1_5.image == answer3.image || guess1_5.image == answer4.image || guess1_5.image == answer1.image {
            highlight1_5.image = wrongPosition
        }else
        { highlight1_5.image = incorrect
            
        }
        if guess1_1.image == answer1.image && guess1_2.image == answer2.image && guess1_3.image == answer3.image && guess1_4.image == answer4.image && guess1_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    }
    
    func checkerGuessTwo() {
        
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess2_1.image == answer1.image {
            highlight2_1.image = correct
        }else if guess2_1.image == answer2.image || guess2_1.image == answer3.image || guess2_1.image == answer4.image || guess2_1.image == answer5.image {
            highlight2_1.image = wrongPosition
        }else
        { highlight2_1.image = incorrect
            
        }
        if guess2_2.image == answer2.image {
            highlight2_2.image = correct
        }else if guess2_2.image == answer1.image || guess2_2.image == answer3.image || guess2_2.image == answer4.image || guess2_2.image == answer5.image {
            highlight2_2.image = wrongPosition
        }else
        { highlight2_2.image = incorrect
            
        }
        if guess2_3.image == answer3.image {
            highlight2_3.image = correct
        }else if guess2_3.image == answer2.image || guess2_3.image == answer1.image || guess2_3.image == answer4.image || guess2_3.image == answer5.image {
            highlight2_3.image = wrongPosition
        }else
        { highlight2_3.image = incorrect
            
        }
        if guess2_4.image == answer4.image {
            highlight2_4.image = correct
        }else if guess2_4.image == answer2.image || guess2_4.image == answer3.image || guess2_4.image == answer1.image || guess2_4.image == answer5.image {
            highlight2_4.image = wrongPosition
        }else
        { highlight2_4.image = incorrect
            
        }
        if guess2_5.image == answer5.image {
            highlight2_5.image = correct
        }else if guess2_5.image == answer2.image || guess2_5.image == answer3.image || guess2_5.image == answer4.image || guess2_5.image == answer1.image {
            highlight2_5.image = wrongPosition
        }else
        { highlight2_5.image = incorrect
            
        }
        if guess2_1.image == answer1.image && guess2_2.image == answer2.image && guess2_3.image == answer3.image && guess2_4.image == answer4.image && guess2_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    
    }
    func checkerGuessThree() {
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess3_1.image == answer1.image {
            highlight3_1.image = correct
        }else if guess3_1.image == answer2.image || guess3_1.image == answer3.image || guess3_1.image == answer4.image || guess3_1.image == answer5.image {
            highlight3_1.image = wrongPosition
        }else
        { highlight3_1.image = incorrect
            
        }
        if guess3_2.image == answer2.image {
            highlight3_2.image = correct
        }else if guess3_2.image == answer1.image || guess3_2.image == answer3.image || guess3_2.image == answer4.image || guess3_2.image == answer5.image {
            highlight3_2.image = wrongPosition
        }else
        { highlight3_2.image = incorrect
            
        }
        if guess3_3.image == answer3.image {
            highlight3_3.image = correct
        }else if guess3_3.image == answer2.image || guess3_3.image == answer1.image || guess3_3.image == answer4.image || guess3_3.image == answer5.image {
            highlight3_3.image = wrongPosition
        }else
        { highlight3_3.image = incorrect
            
        }
        if guess3_4.image == answer4.image {
            highlight3_4.image = correct
        }else if guess3_4.image == answer2.image || guess3_4.image == answer3.image || guess3_4.image == answer1.image || guess3_4.image == answer5.image {
            highlight3_4.image = wrongPosition
        }else
        { highlight3_4.image = incorrect
            
        }
        if guess3_5.image == answer5.image {
            highlight3_5.image = correct
        }else if guess3_5.image == answer2.image || guess3_5.image == answer3.image || guess3_5.image == answer4.image || guess3_5.image == answer1.image {
            highlight3_5.image = wrongPosition
        }else
        { highlight3_5.image = incorrect
            
        }
        if guess3_1.image == answer1.image && guess3_2.image == answer2.image && guess3_3.image == answer3.image && guess3_4.image == answer4.image && guess3_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
        
    }
    func checkerGuessFour() {
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess4_1.image == answer1.image {
            highlight4_1.image = correct
        }else if guess4_1.image == answer2.image || guess4_1.image == answer3.image || guess4_1.image == answer4.image || guess4_1.image == answer5.image {
            highlight4_1.image = wrongPosition
        }else
        { highlight4_1.image = incorrect
            
        }
        if guess4_2.image == answer2.image {
            highlight4_2.image = correct
        }else if guess4_2.image == answer1.image || guess4_2.image == answer3.image || guess4_2.image == answer4.image || guess4_2.image == answer5.image {
            highlight4_2.image = wrongPosition
        }else
        { highlight4_2.image = incorrect
            
        }
        if guess4_3.image == answer3.image {
            highlight4_3.image = correct
        }else if guess4_3.image == answer2.image || guess4_3.image == answer1.image || guess4_3.image == answer4.image || guess4_3.image == answer5.image {
            highlight4_3.image = wrongPosition
        }else
        { highlight4_3.image = incorrect
            
        }
        if guess4_4.image == answer4.image {
            highlight4_4.image = correct
        }else if guess4_4.image == answer2.image || guess4_4.image == answer3.image || guess4_4.image == answer1.image || guess4_4.image == answer5.image {
            highlight4_4.image = wrongPosition
        }else
        { highlight4_4.image = incorrect
            
        }
        if guess4_5.image == answer5.image {
            highlight4_5.image = correct
        }else if guess4_5.image == answer2.image || guess4_5.image == answer3.image || guess4_5.image == answer4.image || guess4_5.image == answer1.image {
            highlight4_5.image = wrongPosition
        }else
        { highlight4_5.image = incorrect
        }
        if guess4_1.image == answer1.image && guess4_2.image == answer2.image && guess4_3.image == answer3.image && guess4_4.image == answer4.image && guess4_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    }
    
    func checkerGuessFive() {
        
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess5_1.image == answer1.image {
            highlight5_1.image = correct
        }else if guess5_1.image == answer2.image || guess5_1.image == answer3.image || guess5_1.image == answer4.image || guess5_1.image == answer5.image {
            highlight5_1.image = wrongPosition
        }else
        { highlight5_1.image = incorrect
            
        }
        if guess5_2.image == answer2.image {
            highlight5_2.image = correct
        }else if guess5_2.image == answer1.image || guess5_2.image == answer3.image || guess5_2.image == answer4.image || guess5_2.image == answer5.image {
            highlight5_2.image = wrongPosition
        }else
        { highlight5_2.image = incorrect
            
        }
        if guess5_3.image == answer3.image {
            highlight5_3.image = correct
        }else if guess5_3.image == answer2.image || guess5_3.image == answer1.image || guess5_3.image == answer4.image || guess5_3.image == answer5.image {
            highlight5_3.image = wrongPosition
        }else
        { highlight5_3.image = incorrect
            
        }
        if guess5_4.image == answer4.image {
            highlight5_4.image = correct
        }else if guess5_4.image == answer2.image || guess5_4.image == answer3.image || guess5_4.image == answer1.image || guess5_4.image == answer5.image {
            highlight5_4.image = wrongPosition
        }else
        { highlight5_4.image = incorrect
            
        }
        if guess5_5.image == answer5.image {
            highlight5_5.image = correct
        }else if guess5_5.image == answer2.image || guess5_5.image == answer3.image || guess5_5.image == answer4.image || guess5_5.image == answer1.image {
            highlight5_5.image = wrongPosition
        }else
        { highlight5_5.image = incorrect
            
        }
        if guess5_1.image == answer1.image && guess5_2.image == answer2.image && guess5_3.image == answer3.image && guess5_4.image == answer4.image && guess5_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    }
    
    func checkerGuessSix() {
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess6_1.image == answer1.image {
            highlight6_1.image = correct
        }else if guess6_1.image == answer2.image || guess6_1.image == answer3.image || guess6_1.image == answer4.image || guess6_1.image == answer5.image {
            highlight6_1.image = wrongPosition
        }else
        { highlight6_1.image = incorrect
            
        }
        if guess6_2.image == answer2.image {
            highlight6_2.image = correct
        }else if guess6_2.image == answer1.image || guess6_2.image == answer3.image || guess6_2.image == answer4.image || guess6_2.image == answer5.image {
            highlight6_2.image = wrongPosition
        }else
        { highlight6_2.image = incorrect
            
        }
        if guess6_3.image == answer3.image {
            highlight6_3.image = correct
        }else if guess6_3.image == answer2.image || guess6_3.image == answer1.image || guess6_3.image == answer4.image || guess6_3.image == answer5.image {
            highlight6_3.image = wrongPosition
        }else
        { highlight6_3.image = incorrect
            
        }
        if guess6_4.image == answer4.image {
            highlight6_4.image = correct
        }else if guess6_4.image == answer2.image || guess6_4.image == answer3.image || guess6_4.image == answer1.image || guess6_4.image == answer5.image {
            highlight6_4.image = wrongPosition
        }else
        { highlight6_4.image = incorrect
            
        }
        if guess6_5.image == answer5.image {
            highlight6_5.image = correct
        }else if guess6_5.image == answer2.image || guess6_5.image == answer3.image || guess6_5.image == answer4.image || guess6_5.image == answer1.image {
            highlight6_5.image = wrongPosition
        }else
        { highlight6_5.image = incorrect
        }
        if guess6_1.image == answer1.image && guess6_2.image == answer2.image && guess6_3.image == answer3.image && guess6_4.image == answer4.image && guess6_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    }
    
    func checkerGuessSeven() {
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess7_1.image == answer1.image {
            highlight7_1.image = correct
        }else if guess7_1.image == answer2.image || guess7_1.image == answer3.image || guess7_1.image == answer4.image || guess7_1.image == answer5.image {
            highlight7_1.image = wrongPosition
        }else
        { highlight7_1.image = incorrect
            
        }
        if guess7_2.image == answer2.image {
            highlight7_2.image = correct
        }else if guess7_2.image == answer1.image || guess7_2.image == answer3.image || guess7_2.image == answer4.image || guess7_2.image == answer5.image {
            highlight7_2.image = wrongPosition
        }else
        { highlight7_2.image = incorrect
            
        }
        if guess7_3.image == answer3.image {
            highlight7_3.image = correct
        }else if guess7_3.image == answer2.image || guess7_3.image == answer1.image || guess7_3.image == answer4.image || guess7_3.image == answer5.image {
            highlight7_3.image = wrongPosition
        }else
        { highlight7_3.image = incorrect
            
        }
        if guess7_4.image == answer4.image {
            highlight7_4.image = correct
        }else if guess7_4.image == answer2.image || guess7_4.image == answer3.image || guess7_4.image == answer1.image || guess7_4.image == answer5.image {
            highlight7_4.image = wrongPosition
        }else
        { highlight7_4.image = incorrect
            
        }
        if guess7_5.image == answer5.image {
            highlight7_5.image = correct
        }else if guess7_5.image == answer2.image || guess7_5.image == answer3.image || guess7_5.image == answer4.image || guess7_5.image == answer1.image {
            highlight7_5.image = wrongPosition
        }else
        { highlight7_5.image = incorrect
            
        }
        if guess7_1.image == answer1.image && guess7_2.image == answer2.image && guess7_3.image == answer3.image && guess7_4.image == answer4.image && guess7_5.image == answer5.image{
                correctAnswer = 1
            }else
            {}
    }
    
    func checkerGuessEight() {
        
        let correct = #imageLiteral(resourceName: "green")
        let wrongPosition = #imageLiteral(resourceName: "orange")
        let incorrect = #imageLiteral(resourceName: "red")
        
        if guess8_1.image == answer1.image {
            highlight8_1.image = correct
        }else if guess8_1.image == answer2.image || guess8_1.image == answer3.image || guess8_1.image == answer4.image || guess8_1.image == answer5.image {
            highlight8_1.image = wrongPosition
        }else
        { highlight8_1.image = incorrect
            
        }
        if guess8_2.image == answer2.image {
            highlight8_2.image = correct
        }else if guess8_2.image == answer1.image || guess8_2.image == answer3.image || guess8_2.image == answer4.image || guess8_2.image == answer5.image {
            highlight8_2.image = wrongPosition
        }else
        { highlight8_2.image = incorrect
            
        }
        if guess8_3.image == answer3.image {
            highlight8_3.image = correct
        }else if guess8_3.image == answer2.image || guess8_3.image == answer1.image || guess8_3.image == answer4.image || guess8_3.image == answer5.image {
            highlight8_3.image = wrongPosition
        }else
        { highlight8_3.image = incorrect
            
        }
        if guess8_4.image == answer4.image {
            highlight8_4.image = correct
        }else if guess8_4.image == answer2.image || guess8_4.image == answer3.image || guess8_4.image == answer1.image || guess8_4.image == answer5.image {
            highlight8_4.image = wrongPosition
        }else
        { highlight8_4.image = incorrect
            
        }
        if guess8_5.image == answer5.image {
            highlight8_5.image = correct
        }else if guess8_5.image == answer2.image || guess8_5.image == answer3.image || guess8_5.image == answer4.image || guess8_5.image == answer1.image {
            highlight8_5.image = wrongPosition
        }else
        { highlight8_5.image = incorrect
            
        if guess8_1.image == answer1.image && guess8_2.image == answer2.image && guess8_3.image == answer3.image && guess8_4.image == answer4.image && guess8_5.image == answer5.image{
                    correctAnswer = 1
        }else
        {}
            
        }
    }
    @IBAction func goPressed(_ sender: Any) {
        
        if Tries == 0  && firstAnswer.count == 6 {
            checkerGuessOne()
            Tries += 1
        }else if Tries == 1 && secondAnswer.count == 6 {
            checkerGuessTwo()
            Tries += 1
        }else if Tries == 2 && thirdAnswer.count == 6 {
            checkerGuessThree()
            Tries += 1
        }else if Tries == 3 && fourthAnswer.count == 6 {
            checkerGuessFour()
            Tries += 1
        }else if Tries == 4 && fifthAnswer.count == 6 {
            checkerGuessFive()
            Tries += 1
        }else if Tries == 5 && sixthAnswer.count == 6 {
            checkerGuessSix()
            Tries += 1
        }else if Tries == 6 && seventhAnswer.count == 6 {
            checkerGuessSeven()
            Tries += 1
        }else if Tries == 7 && eightAnswer.count == 6 {
            checkerGuessEight()
            
        }else
        {errorLabel.text = "Enter 5 letters"}
        
        solved()
    }
    
    func solved() {
     if Tries == 8 && correctAnswer == 1 {
        
        errorLabel.text = "Well done!"
        errorLabel.alpha = 1
        
        thisSession += 1
         topLabel.text = "This Session: \(thisSession)  solved"
         topLabel.alpha = 1
        
    }else if Tries == 8 && correctAnswer != 1{
        
        errorLabel.text = "Unlucky, Try again"
        errorLabel.alpha = 1
    }else{}

    }
    
    
    @IBAction func newGameButton(_ sender: UIButton) {
        
        print (correctAnswer)
        print (Tries)
        
        if correctAnswer == 1 || eightAnswer.count == 6 {
   
            firstAnswer.removeAll()
            secondAnswer.removeAll()
            thirdAnswer.removeAll()
            fourthAnswer.removeAll()
            fifthAnswer.removeAll()
            sixthAnswer.removeAll()
            seventhAnswer.removeAll()
            eightAnswer.removeAll()
            
            firstAnswer = [#imageLiteral(resourceName: "textRing")]
            secondAnswer = [#imageLiteral(resourceName: "textRing")]
            thirdAnswer = [#imageLiteral(resourceName: "textRing")]
            fourthAnswer = [#imageLiteral(resourceName: "textRing")]
            fifthAnswer = [#imageLiteral(resourceName: "textRing")]
            sixthAnswer = [#imageLiteral(resourceName: "textRing")]
            seventhAnswer = [#imageLiteral(resourceName: "textRing")]
            eightAnswer = [#imageLiteral(resourceName: "textRing")]
            
            highlight1_1.image = #imageLiteral(resourceName: "textRing")
            highlight1_2.image = #imageLiteral(resourceName: "textRing")
            highlight1_3.image = #imageLiteral(resourceName: "textRing")
            highlight1_4.image = #imageLiteral(resourceName: "textRing")
            highlight1_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight2_1.image = #imageLiteral(resourceName: "textRing")
            highlight2_2.image = #imageLiteral(resourceName: "textRing")
            highlight2_3.image = #imageLiteral(resourceName: "textRing")
            highlight2_4.image = #imageLiteral(resourceName: "textRing")
            highlight2_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight3_1.image = #imageLiteral(resourceName: "textRing")
            highlight3_2.image = #imageLiteral(resourceName: "textRing")
            highlight3_3.image = #imageLiteral(resourceName: "textRing")
            highlight3_4.image = #imageLiteral(resourceName: "textRing")
            highlight3_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight4_1.image = #imageLiteral(resourceName: "textRing")
            highlight4_2.image = #imageLiteral(resourceName: "textRing")
            highlight4_3.image = #imageLiteral(resourceName: "textRing")
            highlight4_4.image = #imageLiteral(resourceName: "textRing")
            highlight4_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight5_1.image = #imageLiteral(resourceName: "textRing")
            highlight5_2.image = #imageLiteral(resourceName: "textRing")
            highlight5_3.image = #imageLiteral(resourceName: "textRing")
            highlight5_4.image = #imageLiteral(resourceName: "textRing")
            highlight5_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight6_1.image = #imageLiteral(resourceName: "textRing")
            highlight6_2.image = #imageLiteral(resourceName: "textRing")
            highlight6_3.image = #imageLiteral(resourceName: "textRing")
            highlight6_4.image = #imageLiteral(resourceName: "textRing")
            highlight6_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight7_1.image = #imageLiteral(resourceName: "textRing")
            highlight7_2.image = #imageLiteral(resourceName: "textRing")
            highlight7_3.image = #imageLiteral(resourceName: "textRing")
            highlight7_4.image = #imageLiteral(resourceName: "textRing")
            highlight7_5.image = #imageLiteral(resourceName: "textRing")
            
            highlight8_1.image = #imageLiteral(resourceName: "textRing")
            highlight8_2.image = #imageLiteral(resourceName: "textRing")
            highlight8_3.image = #imageLiteral(resourceName: "textRing")
            highlight8_4.image = #imageLiteral(resourceName: "textRing")
            highlight8_5.image = #imageLiteral(resourceName: "textRing")
            
            codeGenerator()
            
            Tries = 0
            correctAnswer = 0
            
            yourGuess()
            
        }else{
            errorLabel.text = "Try finsish this one first"
    }
    
}
}
