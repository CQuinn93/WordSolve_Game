//
//  WordSolveViewController.swift
//  WordSolve
//
//  Created by Craig Quinn on 23/01/2022.
//

import UIKit

class WordSolveViewController: UIViewController {
    

    
//    Guesses: Shows the letters entered by the user once the GO! button is pressed
    
    @IBOutlet weak var guess1_1: UIImageView!
    @IBOutlet weak var guess1_2: UIImageView!
    @IBOutlet weak var guess1_3: UIImageView!
    @IBOutlet weak var guess1_4: UIImageView!
    @IBOutlet weak var guess1_5: UIImageView!
    @IBOutlet weak var guess1_6: UIImageView!
    
    @IBOutlet weak var guess2_1: UIImageView!
    @IBOutlet weak var guess2_2: UIImageView!
    @IBOutlet weak var guess2_3: UIImageView!
    @IBOutlet weak var guess2_4: UIImageView!
    @IBOutlet weak var guess2_5: UIImageView!
    @IBOutlet weak var guess2_6: UIImageView!
    
    @IBOutlet weak var guess3_1: UIImageView!
    @IBOutlet weak var guess3_2: UIImageView!
    @IBOutlet weak var guess3_3: UIImageView!
    @IBOutlet weak var guess3_4: UIImageView!
    @IBOutlet weak var guess3_5: UIImageView!
    @IBOutlet weak var guess3_6: UIImageView!
    
    @IBOutlet weak var guess4_1: UIImageView!
    @IBOutlet weak var guess4_2: UIImageView!
    @IBOutlet weak var guess4_3: UIImageView!
    @IBOutlet weak var guess4_4: UIImageView!
    @IBOutlet weak var guess4_5: UIImageView!
    @IBOutlet weak var guess4_6: UIImageView!
    
    @IBOutlet weak var guess5_1: UIImageView!
    @IBOutlet weak var guess5_2: UIImageView!
    @IBOutlet weak var guess5_3: UIImageView!
    @IBOutlet weak var guess5_4: UIImageView!
    @IBOutlet weak var guess5_5: UIImageView!
    @IBOutlet weak var guess5_6: UIImageView!
    
    @IBOutlet weak var guess6_1: UIImageView!
    @IBOutlet weak var guess6_2: UIImageView!
    @IBOutlet weak var guess6_3: UIImageView!
    @IBOutlet weak var guess6_4: UIImageView!
    @IBOutlet weak var guess6_5: UIImageView!
    @IBOutlet weak var guess6_6: UIImageView!
    
//   HIghlight: Show if the letter entered is correct, incorrect or in the wrong location with a different colour background
    
    @IBOutlet weak var highlight1_1: UIImageView!
    @IBOutlet weak var highlight1_2: UIImageView!
    @IBOutlet weak var highlight1_3: UIImageView!
    @IBOutlet weak var highlight1_4: UIImageView!
    @IBOutlet weak var highlight1_5: UIImageView!
    @IBOutlet weak var highlight1_6: UIImageView!
    
    @IBOutlet weak var highlight2_1: UIImageView!
    @IBOutlet weak var highlight2_2: UIImageView!
    @IBOutlet weak var highlight2_3: UIImageView!
    @IBOutlet weak var highlight2_4: UIImageView!
    @IBOutlet weak var highlight2_5: UIImageView!
    @IBOutlet weak var highlight2_6: UIImageView!
    
    @IBOutlet weak var highlight3_1: UIImageView!
    @IBOutlet weak var highlight3_2: UIImageView!
    @IBOutlet weak var highlight3_3: UIImageView!
    @IBOutlet weak var highlight3_4: UIImageView!
    @IBOutlet weak var highlight3_5: UIImageView!
    @IBOutlet weak var highlight3_6: UIImageView!
    
    @IBOutlet weak var highlight4_1: UIImageView!
    @IBOutlet weak var highlight4_2: UIImageView!
    @IBOutlet weak var highlight4_3: UIImageView!
    @IBOutlet weak var highlight4_4: UIImageView!
    @IBOutlet weak var highlight4_5: UIImageView!
    @IBOutlet weak var highlight4_6: UIImageView!
    
    @IBOutlet weak var highlight5_1: UIImageView!
    @IBOutlet weak var highlight5_2: UIImageView!
    @IBOutlet weak var highlight5_3: UIImageView!
    @IBOutlet weak var highlight5_4: UIImageView!
    @IBOutlet weak var highlight5_5: UIImageView!
    @IBOutlet weak var highlight5_6: UIImageView!
    
    @IBOutlet weak var highlight6_1: UIImageView!
    @IBOutlet weak var highlight6_2: UIImageView!
    @IBOutlet weak var highlight6_3: UIImageView!
    @IBOutlet weak var highlight6_4: UIImageView!
    @IBOutlet weak var highlight6_5: UIImageView!
    @IBOutlet weak var highlight6_6: UIImageView!
    
//    Answer: Shows the Answer if the player fails to guess correctly in all 6 attempts
    
    
    @IBOutlet weak var legendGreen: UIImageView!
    @IBOutlet weak var legendOrange: UIImageView!
    @IBOutlet weak var legendRed: UIImageView!
    
//    Labels: Shows the category of the word and also promps a message when an invalid action is attempted
    
    @IBOutlet weak var bottomLabel: UILabel!
    @IBOutlet weak var headerLabel: UILabel!
    @IBOutlet weak var showAnswerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

       answer()
        headerLabel.text = "Can you guess the word?"
        bottomLabel.text = "Designed by CQuinn"
        legendRed.image = #imageLiteral(resourceName: "red")
        legendRed.alpha = 0.5
        legendGreen.image = #imageLiteral(resourceName: "green")
        legendGreen.alpha = 0.5
        legendOrange.image = #imageLiteral(resourceName: "orange")
        legendOrange.alpha = 0.5
    }
   
        
//      Defining the Variables: Creating arrays to host the answers that the user inputs. Answer            Variables consist of images that will be desplayed to the user. AnswerText variables will run       behind the scene to compare the answer to the entries.
     
        var firstGuess = [#imageLiteral(resourceName: "textRing")]
        var firstGuessText = ["A"]
        
        var secondGuess = [#imageLiteral(resourceName: "textRing")]
        var secondGuessText = ["A"]
        
        var thirdGuess = [#imageLiteral(resourceName: "textRing")]
        var thirdGuessText = ["A"]
        
        var fourthGuess = [#imageLiteral(resourceName: "textRing")]
        var fourthGuessText = ["A"]
        
        var fifthGuess = [#imageLiteral(resourceName: "textRing")]
        var fifthGuessText = ["A"]
        
        var sixthGuess = [#imageLiteral(resourceName: "textRing")]
        var sixthGuessText = ["A"]

        var wordSolveAnswer = ["A"]
    
//    Stat and indicator Variables: Creating Int variables to help tell the code what to do when the values of these vaiables changes
    
        var thisSession = 0
        var Tries = 0
        var correctAnswer = 0
    
    
    //  Function - Your Guess: Runs every time the user selects the GO! button to print the image of each of their entries into the correct circle. Also runs when DEL is selected to remove an image that is no longer needed
        
        func yourGuess() {
            
            if firstGuess.count == 1 {
                guess1_1.image = firstGuess[0]
                guess1_2.image = firstGuess[0]
                guess1_3.image = firstGuess[0]
                guess1_4.image = firstGuess[0]
                guess1_5.image = firstGuess[0]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 2 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[0]
                guess1_3.image = firstGuess[0]
                guess1_4.image = firstGuess[0]
                guess1_5.image = firstGuess[0]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 3 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[2]
                guess1_3.image = firstGuess[0]
                guess1_4.image = firstGuess[0]
                guess1_5.image = firstGuess[0]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 4 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[2]
                guess1_3.image = firstGuess[3]
                guess1_4.image = firstGuess[0]
                guess1_5.image = firstGuess[0]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 5 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[2]
                guess1_3.image = firstGuess[3]
                guess1_4.image = firstGuess[4]
                guess1_5.image = firstGuess[0]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 6 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[2]
                guess1_3.image = firstGuess[3]
                guess1_4.image = firstGuess[4]
                guess1_5.image = firstGuess[5]
                guess1_6.image = firstGuess[0]
            }else if
                firstGuess.count == 7 {
                guess1_1.image = firstGuess[1]
                guess1_2.image = firstGuess[2]
                guess1_3.image = firstGuess[3]
                guess1_4.image = firstGuess[4]
                guess1_5.image = firstGuess[5]
                guess1_6.image = firstGuess[6]
                
            }else
            {}
            if secondGuess.count == 1 {
                guess2_1.image = secondGuess[0]
                guess2_2.image = secondGuess[0]
                guess2_3.image = secondGuess[0]
                guess2_4.image = secondGuess[0]
                guess2_5.image = secondGuess[0]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 2 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[0]
                guess2_3.image = secondGuess[0]
                guess2_4.image = secondGuess[0]
                guess2_5.image = secondGuess[0]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 3 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[2]
                guess2_3.image = secondGuess[0]
                guess2_4.image = secondGuess[0]
                guess2_5.image = secondGuess[0]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 4 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[2]
                guess2_3.image = secondGuess[3]
                guess2_4.image = secondGuess[0]
                guess2_5.image = secondGuess[0]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 5 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[2]
                guess2_3.image = secondGuess[3]
                guess2_4.image = secondGuess[4]
                guess2_5.image = secondGuess[0]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 6 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[2]
                guess2_3.image = secondGuess[3]
                guess2_4.image = secondGuess[4]
                guess2_5.image = secondGuess[5]
                guess2_6.image = secondGuess[0]
            }else if
                secondGuess.count == 7 {
                guess2_1.image = secondGuess[1]
                guess2_2.image = secondGuess[2]
                guess2_3.image = secondGuess[3]
                guess2_4.image = secondGuess[4]
                guess2_5.image = secondGuess[5]
                guess2_6.image = secondGuess[6]
            }else
            {}
            if thirdGuess.count == 1 {
                guess3_1.image = thirdGuess[0]
                guess3_2.image = thirdGuess[0]
                guess3_3.image = thirdGuess[0]
                guess3_4.image = thirdGuess[0]
                guess3_5.image = thirdGuess[0]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 2 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[0]
                guess3_3.image = thirdGuess[0]
                guess3_4.image = thirdGuess[0]
                guess3_5.image = thirdGuess[0]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 3 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[2]
                guess3_3.image = thirdGuess[0]
                guess3_4.image = thirdGuess[0]
                guess3_5.image = thirdGuess[0]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 4 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[2]
                guess3_3.image = thirdGuess[3]
                guess3_4.image = thirdGuess[0]
                guess3_5.image = thirdGuess[0]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 5 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[2]
                guess3_3.image = thirdGuess[3]
                guess3_4.image = thirdGuess[4]
                guess3_5.image = thirdGuess[0]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 6 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[2]
                guess3_3.image = thirdGuess[3]
                guess3_4.image = thirdGuess[4]
                guess3_5.image = thirdGuess[5]
                guess3_6.image = thirdGuess[0]
            }else if
                thirdGuess.count == 7 {
                guess3_1.image = thirdGuess[1]
                guess3_2.image = thirdGuess[2]
                guess3_3.image = thirdGuess[3]
                guess3_4.image = thirdGuess[4]
                guess3_5.image = thirdGuess[5]
                guess3_6.image = thirdGuess[6]
            }else
            {}
            if fourthGuess.count == 1 {
                guess4_1.image = fourthGuess[0]
                guess4_2.image = fourthGuess[0]
                guess4_3.image = fourthGuess[0]
                guess4_4.image = fourthGuess[0]
                guess4_5.image = fourthGuess[0]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 2 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[0]
                guess4_3.image = fourthGuess[0]
                guess4_4.image = fourthGuess[0]
                guess4_5.image = fourthGuess[0]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 3 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[2]
                guess4_3.image = fourthGuess[0]
                guess4_4.image = fourthGuess[0]
                guess4_5.image = fourthGuess[0]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 4 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[2]
                guess4_3.image = fourthGuess[3]
                guess4_4.image = fourthGuess[0]
                guess4_5.image = fourthGuess[0]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 5 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[2]
                guess4_3.image = fourthGuess[3]
                guess4_4.image = fourthGuess[4]
                guess4_5.image = fourthGuess[0]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 6 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[2]
                guess4_3.image = fourthGuess[3]
                guess4_4.image = fourthGuess[4]
                guess4_5.image = fourthGuess[5]
                guess4_6.image = fourthGuess[0]
            }else if
                fourthGuess.count == 7 {
                guess4_1.image = fourthGuess[1]
                guess4_2.image = fourthGuess[2]
                guess4_3.image = fourthGuess[3]
                guess4_4.image = fourthGuess[4]
                guess4_5.image = fourthGuess[5]
                guess4_6.image = fourthGuess[6]
            }else
            {}
            if fifthGuess.count == 1 {
                guess5_1.image = fifthGuess[0]
                guess5_2.image = fifthGuess[0]
                guess5_3.image = fifthGuess[0]
                guess5_4.image = fifthGuess[0]
                guess5_5.image = fifthGuess[0]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 2 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[0]
                guess5_3.image = fifthGuess[0]
                guess5_4.image = fifthGuess[0]
                guess5_5.image = fifthGuess[0]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 3 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[2]
                guess5_3.image = fifthGuess[0]
                guess5_4.image = fifthGuess[0]
                guess5_5.image = fifthGuess[0]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 4 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[2]
                guess5_3.image = fifthGuess[3]
                guess5_4.image = fifthGuess[0]
                guess5_5.image = fifthGuess[0]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 5 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[2]
                guess5_3.image = fifthGuess[3]
                guess5_4.image = fifthGuess[4]
                guess5_5.image = fifthGuess[0]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 6 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[2]
                guess5_3.image = fifthGuess[3]
                guess5_4.image = fifthGuess[4]
                guess5_5.image = fifthGuess[5]
                guess5_6.image = fifthGuess[0]
            }else if
                fifthGuess.count == 7 {
                guess5_1.image = fifthGuess[1]
                guess5_2.image = fifthGuess[2]
                guess5_3.image = fifthGuess[3]
                guess5_4.image = fifthGuess[4]
                guess5_5.image = fifthGuess[5]
                guess5_6.image = fifthGuess[6]
            }else
            {}
            if sixthGuess.count == 1 {
                guess6_1.image = sixthGuess[0]
                guess6_2.image = sixthGuess[0]
                guess6_3.image = sixthGuess[0]
                guess6_4.image = sixthGuess[0]
                guess6_5.image = sixthGuess[0]
                guess6_6.image = sixthGuess[0]
            }else if
                sixthGuess.count == 2 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[0]
                guess6_3.image = sixthGuess[0]
                guess6_4.image = sixthGuess[0]
                guess6_5.image = sixthGuess[0]
                guess6_6.image = sixthGuess[0]
            }else if
                sixthGuess.count == 3 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[2]
                guess6_3.image = sixthGuess[0]
                guess6_4.image = sixthGuess[0]
                guess6_5.image = sixthGuess[0]
                guess6_6.image = sixthGuess[0]
            }else if
                sixthGuess.count == 4 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[2]
                guess6_3.image = sixthGuess[3]
                guess6_4.image = sixthGuess[0]
                guess6_5.image = sixthGuess[0]
                guess6_6.image = sixthGuess[0]
                    
            }else if
                sixthGuess.count == 5 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[2]
                guess6_3.image = sixthGuess[3]
                guess6_4.image = sixthGuess[4]
                guess6_5.image = sixthGuess[0]
                guess6_6.image = sixthGuess[0]
            }else if
                sixthGuess.count == 6 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[2]
                guess6_3.image = sixthGuess[3]
                guess6_4.image = sixthGuess[4]
                guess6_5.image = sixthGuess[5]
                guess6_6.image = sixthGuess[0]
            }else if
                sixthGuess.count == 7 {
                guess6_1.image = sixthGuess[1]
                guess6_2.image = sixthGuess[2]
                guess6_3.image = sixthGuess[3]
                guess6_4.image = sixthGuess[4]
                guess6_5.image = sixthGuess[5]
                guess6_6.image = sixthGuess[6]
            }else
            {}
    
        }
        
            func answer() {
                
                let theAnswer = Words.init().wordDictionary.shuffled()
                
                let selectedWord = theAnswer[0]
            
            let answerLetter1 = String(selectedWord[0])
            let answerLetter2 = String(selectedWord[1])
            let answerLetter3 = String(selectedWord[2])
            let answerLetter4 = String(selectedWord[3])
            let answerLetter5 = String(selectedWord[4])
            let answerLetter6 = String(selectedWord[5])
                
                wordSolveAnswer.removeAll()
                
                wordSolveAnswer.append("A")
                wordSolveAnswer.append(answerLetter1)
                wordSolveAnswer.append(answerLetter2)
                wordSolveAnswer.append(answerLetter3)
                wordSolveAnswer.append(answerLetter4)
                wordSolveAnswer.append(answerLetter5)
                wordSolveAnswer.append(answerLetter6)
                
            }
    func reset() {
        
        showAnswerLabel.alpha = 0
        headerLabel.text = "Can you guess the Word?"
        
        firstGuess.removeAll()
        secondGuess.removeAll()
        thirdGuess.removeAll()
        fourthGuess.removeAll()
        fifthGuess.removeAll()
        sixthGuess.removeAll()
        firstGuessText.removeAll()
        secondGuessText.removeAll()
        thirdGuessText.removeAll()
        fourthGuessText.removeAll()
        fifthGuessText.removeAll()
        sixthGuessText.removeAll()
        
        firstGuess = [#imageLiteral(resourceName: "textRing")]
        firstGuessText = ["A"]
        
        secondGuess = [#imageLiteral(resourceName: "textRing")]
        secondGuessText = ["A"]
        
        thirdGuess = [#imageLiteral(resourceName: "textRing")]
        thirdGuessText = ["A"]
        
        fourthGuess = [#imageLiteral(resourceName: "textRing")]
        fourthGuessText = ["A"]
        
        fifthGuess = [#imageLiteral(resourceName: "textRing")]
        fifthGuessText = ["A"]
        
        sixthGuess = [#imageLiteral(resourceName: "textRing")]
        sixthGuessText = ["A"]
        
        
        
        highlight1_1.image = #imageLiteral(resourceName: "textRing")
        highlight1_2.image = #imageLiteral(resourceName: "textRing")
        highlight1_3.image = #imageLiteral(resourceName: "textRing")
        highlight1_4.image = #imageLiteral(resourceName: "textRing")
        highlight1_5.image = #imageLiteral(resourceName: "textRing")
        highlight1_6.image = #imageLiteral(resourceName: "textRing")
        
        
        highlight2_1.image = #imageLiteral(resourceName: "textRing")
        highlight2_2.image = #imageLiteral(resourceName: "textRing")
        highlight2_3.image = #imageLiteral(resourceName: "textRing")
        highlight2_4.image = #imageLiteral(resourceName: "textRing")
        highlight2_5.image = #imageLiteral(resourceName: "textRing")
        highlight2_6.image = #imageLiteral(resourceName: "textRing")
        
        highlight3_1.image = #imageLiteral(resourceName: "textRing")
        highlight3_2.image = #imageLiteral(resourceName: "textRing")
        highlight3_3.image = #imageLiteral(resourceName: "textRing")
        highlight3_4.image = #imageLiteral(resourceName: "textRing")
        highlight3_5.image = #imageLiteral(resourceName: "textRing")
        highlight3_6.image = #imageLiteral(resourceName: "textRing")
        
        highlight4_1.image = #imageLiteral(resourceName: "textRing")
        highlight4_2.image = #imageLiteral(resourceName: "textRing")
        highlight4_3.image = #imageLiteral(resourceName: "textRing")
        highlight4_4.image = #imageLiteral(resourceName: "textRing")
        highlight4_5.image = #imageLiteral(resourceName: "textRing")
        highlight4_6.image = #imageLiteral(resourceName: "textRing")
        
        highlight5_1.image = #imageLiteral(resourceName: "textRing")
        highlight5_2.image = #imageLiteral(resourceName: "textRing")
        highlight5_3.image = #imageLiteral(resourceName: "textRing")
        highlight5_4.image = #imageLiteral(resourceName: "textRing")
        highlight5_5.image = #imageLiteral(resourceName: "textRing")
        highlight5_6.image = #imageLiteral(resourceName: "textRing")
        
        highlight6_1.image = #imageLiteral(resourceName: "textRing")
        highlight6_2.image = #imageLiteral(resourceName: "textRing")
        highlight6_3.image = #imageLiteral(resourceName: "textRing")
        highlight6_4.image = #imageLiteral(resourceName: "textRing")
        highlight6_5.image = #imageLiteral(resourceName: "textRing")
        highlight6_6.image = #imageLiteral(resourceName: "textRing")
        
        Tries = 0
        correctAnswer = 0
        
        yourGuess()
    
    }
    

        @IBAction func qPressed(_ sender: Any) {
            
            let currentLetter = #imageLiteral(resourceName: "Q")
            let currentLetterText = "Q"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func wPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "W")
            let currentLetterText = "W"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func ePressed(_ sender: Any) {
            
            let currentLetter = #imageLiteral(resourceName: "E")
            let currentLetterText = "E"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func rPressed(_ sender: UIButton) {
        
            let currentLetter = #imageLiteral(resourceName: "R")
            let currentLetterText = "R"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func tPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "T")
            let currentLetterText = "T"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func yPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "Y")
            let currentLetterText = "Y"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func uPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "U")
            let currentLetterText = "U"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func iPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "I")
            let currentLetterText = "I"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func oPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "O")
            let currentLetterText = "O"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func pPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "P")
            let currentLetterText = "P"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func aPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "A")
            let currentLetterText = "A"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func sPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "S")
            let currentLetterText = "S"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func dPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "D")
            let currentLetterText = "D"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func fPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "F")
            let currentLetterText = "F"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func gPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "G")
            let currentLetterText = "G"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func hPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "H")
            let currentLetterText = "H"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func jPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "J")
            let currentLetterText = "J"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func kPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "K")
            let currentLetterText = "K"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func lPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "L")
            let currentLetterText = "L"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func zPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "Z")
            let currentLetterText = "Z"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func xpressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "X")
            let currentLetterText = "X"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func cPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "Image")
            let currentLetterText = "C"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func vPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "V")
            let currentLetterText = "V"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func bPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "B")
            let currentLetterText = "B"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func nPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "N")
            let currentLetterText = "N"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func mPressed(_ sender: Any) {
            let currentLetter = #imageLiteral(resourceName: "M")
            let currentLetterText = "M"
            
            bottomLabel.alpha = 0
            
            if firstGuess.count < 7 {
                firstGuess.append(currentLetter)
                firstGuessText.append(currentLetterText)
            }else if secondGuess.count < 7 && Tries == 1 {
                secondGuess.append(currentLetter)
                secondGuessText.append(currentLetterText)
            }else if thirdGuess.count < 7 && Tries == 2 {
                thirdGuess.append(currentLetter)
                thirdGuessText.append(currentLetterText)
            }else if fourthGuess.count < 7 && Tries == 3 {
                fourthGuess.append(currentLetter)
                fourthGuessText.append(currentLetterText)
            }else if fifthGuess.count < 7 && Tries == 4 {
                fifthGuess.append(currentLetter)
                fifthGuessText.append(currentLetterText)
            }else if sixthGuess.count < 7 && Tries == 5 {
                sixthGuess.append(currentLetter)
                sixthGuessText.append(currentLetterText)
            }else {bottomLabel.text = "Submit or Delete Answer"
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        @IBAction func delPressed(_ sender: Any) {
            
            bottomLabel.alpha = 0
            
          
           if Tries == 5 && sixthGuess.count > 1 {
                sixthGuess.removeLast()
                sixthGuessText.removeLast()
            }else if Tries == 4 && fifthGuess.count > 1 {
                fifthGuess.removeLast()
                fifthGuessText.removeLast()
            }else if Tries == 3 && fourthGuess.count > 1 {
                fourthGuess.removeLast()
                fourthGuessText.removeLast()
            }else if Tries == 2 && thirdGuess.count > 1 {
                thirdGuess.removeLast()
                thirdGuessText.removeLast()
            }else if Tries == 1 && secondGuess.count > 1 {
                secondGuess.removeLast()
                secondGuessText.removeLast()
            }else if Tries == 0 && firstGuess.count > 1 {
                firstGuess .removeLast()
                firstGuessText.removeLast()
            }else { bottomLabel.text = ""
                bottomLabel.alpha = 1
            }
            yourGuess()
        }
        
        
        
        
        func checkerGuessOne() {
            
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            
            if              firstGuessText[1] == wordSolveAnswer[1] {
                            highlight1_1.image = correct
            }else if        firstGuessText[1] == wordSolveAnswer[2] ||
                            firstGuessText[1] == wordSolveAnswer[3] ||
                            firstGuessText[1] == wordSolveAnswer[4] ||
                            firstGuessText[1] == wordSolveAnswer[5] ||
                            firstGuessText[1] == wordSolveAnswer[6] {
                        highlight1_1.image = wrongPosition
            }else{
                        highlight1_1.image = incorrect
                
            }
            if          firstGuessText[2] == wordSolveAnswer[2] {
                        highlight1_2.image = correct
            }else if    firstGuessText[2] == wordSolveAnswer[1] ||
                            firstGuessText[2] == wordSolveAnswer[3] ||
                            firstGuessText[2] == wordSolveAnswer[4] ||
                            firstGuessText[2] == wordSolveAnswer[5] ||
                            firstGuessText[2] == wordSolveAnswer[6] {
                        highlight1_2.image = wrongPosition
            }else
            {           highlight1_2.image = incorrect
                
            }
            if          firstGuessText[3] == wordSolveAnswer[3] {
                        highlight1_3.image = correct
            }else if    firstGuessText[3] == wordSolveAnswer[1] ||
                            firstGuessText[3] == wordSolveAnswer[2] ||
                            firstGuessText[3] == wordSolveAnswer[4] ||
                            firstGuessText[3] == wordSolveAnswer[5] ||
                            firstGuessText[3] == wordSolveAnswer[6] {
                        highlight1_3.image = wrongPosition
            }else
            {           highlight1_3.image = incorrect
                
            }
            if          firstGuessText[4] == wordSolveAnswer[4] {
                        highlight1_4.image = correct
            }else if    firstGuessText[4] == wordSolveAnswer[1] ||
                            firstGuessText[4] == wordSolveAnswer[2] ||
                            firstGuessText[4] == wordSolveAnswer[3] ||
                            firstGuessText[4] == wordSolveAnswer[5] ||
                            firstGuessText[4] == wordSolveAnswer[6] {
                        highlight1_4.image = wrongPosition
            }else
            {           highlight1_4.image = incorrect
                
            }
            if          firstGuessText[5] == wordSolveAnswer[5] {
                        highlight1_5.image = correct
            }else if    firstGuessText[5] == wordSolveAnswer[1] ||
                            firstGuessText[5] == wordSolveAnswer[2] ||
                            firstGuessText[5] == wordSolveAnswer[3] ||
                            firstGuessText[5] == wordSolveAnswer[4] ||
                            firstGuessText[5] == wordSolveAnswer[6] {
                        highlight1_5.image = wrongPosition
            }else
            {           highlight1_5.image = incorrect
                
            }
            if          firstGuessText[6] == wordSolveAnswer[6] {
                        highlight1_6.image = correct
            }else if    firstGuessText[6] == wordSolveAnswer[1] ||
                            firstGuessText[6] == wordSolveAnswer[2] ||
                            firstGuessText[6] == wordSolveAnswer[3] ||
                            firstGuessText[6] == wordSolveAnswer[4] ||
                            firstGuessText[6] == wordSolveAnswer[5] {
                        highlight1_6.image = wrongPosition
            }else
            {           highlight1_6.image = incorrect
                
            }
            
            if          firstGuessText[1] == wordSolveAnswer[1] &&
                            firstGuessText[2] == wordSolveAnswer[2] &&
                            firstGuessText[3] == wordSolveAnswer[3] &&
                            firstGuessText[4] == wordSolveAnswer[4] &&
                            firstGuessText[5] == wordSolveAnswer[5] &&
                            firstGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
            }
        
        func checkerGuessTwo() {
            
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            if              secondGuessText[1] == wordSolveAnswer[1] {
                            highlight2_1.image = correct
            }else if        secondGuessText[1] == wordSolveAnswer[2] ||
                            secondGuessText[1] == wordSolveAnswer[3] ||
                            secondGuessText[1] == wordSolveAnswer[4] ||
                            secondGuessText[1] == wordSolveAnswer[5] ||
                            secondGuessText[1] == wordSolveAnswer[6] {
                        highlight2_1.image = wrongPosition
            }else{
                        highlight2_1.image = incorrect
                
            }
            if          secondGuessText[2] == wordSolveAnswer[2] {
                        highlight2_2.image = correct
            }else if    secondGuessText[2] == wordSolveAnswer[1] ||
                            secondGuessText[2] == wordSolveAnswer[3] ||
                            secondGuessText[2] == wordSolveAnswer[4] ||
                            secondGuessText[2] == wordSolveAnswer[5] ||
                            secondGuessText[2] == wordSolveAnswer[6] {
                        highlight2_2.image = wrongPosition
            }else
            {           highlight2_2.image = incorrect
                
            }
            if          secondGuessText[3] == wordSolveAnswer[3] {
                        highlight2_3.image = correct
            }else if    secondGuessText[3] == wordSolveAnswer[1] ||
                            secondGuessText[3] == wordSolveAnswer[2] ||
                            secondGuessText[3] == wordSolveAnswer[4] ||
                            secondGuessText[3] == wordSolveAnswer[5] ||
                            secondGuessText[3] == wordSolveAnswer[6] {
                        highlight2_3.image = wrongPosition
            }else
            {           highlight2_3.image = incorrect
                
            }
            if          secondGuessText[4] == wordSolveAnswer[4] {
                        highlight2_4.image = correct
            }else if    secondGuessText[4] == wordSolveAnswer[1] ||
                            secondGuessText[4] == wordSolveAnswer[2] ||
                            secondGuessText[4] == wordSolveAnswer[3] ||
                            secondGuessText[4] == wordSolveAnswer[5] ||
                            secondGuessText[4] == wordSolveAnswer[6] {
                        highlight2_4.image = wrongPosition
            }else
            {           highlight2_4.image = incorrect
                
            }
            if          secondGuessText[5] == wordSolveAnswer[5] {
                        highlight2_5.image = correct
            }else if    secondGuessText[5] == wordSolveAnswer[1] ||
                            secondGuessText[5] == wordSolveAnswer[2] ||
                            secondGuessText[5] == wordSolveAnswer[3] ||
                            secondGuessText[5] == wordSolveAnswer[4] ||
                            secondGuessText[5] == wordSolveAnswer[6] {
                        highlight2_5.image = wrongPosition
            }else
            {           highlight2_5.image = incorrect
                
            }
            if          secondGuessText[6] == wordSolveAnswer[6] {
                        highlight2_6.image = correct
            }else if    secondGuessText[6] == wordSolveAnswer[1] ||
                            secondGuessText[6] == wordSolveAnswer[2] ||
                            secondGuessText[6] == wordSolveAnswer[3] ||
                            secondGuessText[6] == wordSolveAnswer[4] ||
                            secondGuessText[6] == wordSolveAnswer[5] {
                        highlight2_6.image = wrongPosition
            }else
            {           highlight2_6.image = incorrect
                
            }
            
            if          secondGuessText[1] == wordSolveAnswer[1] &&
                            secondGuessText[2] == wordSolveAnswer[2] &&
                            secondGuessText[3] == wordSolveAnswer[3] &&
                            secondGuessText[4] == wordSolveAnswer[4] &&
                            secondGuessText[5] == wordSolveAnswer[5] &&
                            secondGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
        }
        
        func checkerGuessThree() {
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            if              thirdGuessText[1] == wordSolveAnswer[1] {
                            highlight3_1.image = correct
            }else if        thirdGuessText[1] == wordSolveAnswer[2] ||
                            thirdGuessText[1] == wordSolveAnswer[3] ||
                            thirdGuessText[1] == wordSolveAnswer[4] ||
                            thirdGuessText[1] == wordSolveAnswer[5] ||
                            thirdGuessText[1] == wordSolveAnswer[6] {
                        highlight3_1.image = wrongPosition
            }else{
                        highlight3_1.image = incorrect
                
            }
            if          thirdGuessText[2] == wordSolveAnswer[2] {
                        highlight3_2.image = correct
            }else if    thirdGuessText[2] == wordSolveAnswer[1] ||
                            thirdGuessText[2] == wordSolveAnswer[3] ||
                            thirdGuessText[2] == wordSolveAnswer[4] ||
                            thirdGuessText[2] == wordSolveAnswer[5] ||
                            thirdGuessText[2] == wordSolveAnswer[6] {
                        highlight3_2.image = wrongPosition
            }else
            {           highlight3_2.image = incorrect
                
            }
            if          thirdGuessText[3] == wordSolveAnswer[3] {
                        highlight3_3.image = correct
            }else if    thirdGuessText[3] == wordSolveAnswer[1] ||
                            thirdGuessText[3] == wordSolveAnswer[2] ||
                            thirdGuessText[3] == wordSolveAnswer[4] ||
                            thirdGuessText[3] == wordSolveAnswer[5] ||
                            thirdGuessText[3] == wordSolveAnswer[6] {
                        highlight3_3.image = wrongPosition
            }else
            {           highlight3_3.image = incorrect
                
            }
            if          thirdGuessText[4] == wordSolveAnswer[4] {
                        highlight3_4.image = correct
            }else if    thirdGuessText[4] == wordSolveAnswer[1] ||
                            thirdGuessText[4] == wordSolveAnswer[2] ||
                            thirdGuessText[4] == wordSolveAnswer[3] ||
                            thirdGuessText[4] == wordSolveAnswer[5] ||
                            thirdGuessText[4] == wordSolveAnswer[6] {
                        highlight3_4.image = wrongPosition
            }else
            {           highlight3_4.image = incorrect
                
            }
            if          thirdGuessText[5] == wordSolveAnswer[5] {
                        highlight3_5.image = correct
            }else if    thirdGuessText[5] == wordSolveAnswer[1] ||
                            thirdGuessText[5] == wordSolveAnswer[2] ||
                            thirdGuessText[5] == wordSolveAnswer[3] ||
                            thirdGuessText[5] == wordSolveAnswer[4] ||
                            thirdGuessText[5] == wordSolveAnswer[6] {
                        highlight3_5.image = wrongPosition
            }else
            {           highlight3_5.image = incorrect
                
            }
            if          thirdGuessText[6] == wordSolveAnswer[6] {
                        highlight3_6.image = correct
            }else if    thirdGuessText[6] == wordSolveAnswer[1] ||
                            thirdGuessText[6] == wordSolveAnswer[2] ||
                            thirdGuessText[6] == wordSolveAnswer[3] ||
                            thirdGuessText[6] == wordSolveAnswer[4] ||
                            thirdGuessText[6] == wordSolveAnswer[5] {
                        highlight3_6.image = wrongPosition
            }else
            {           highlight3_6.image = incorrect
                
            }
            
            if          thirdGuessText[1] == wordSolveAnswer[1] &&
                            thirdGuessText[2] == wordSolveAnswer[2] &&
                            thirdGuessText[3] == wordSolveAnswer[3] &&
                            thirdGuessText[4] == wordSolveAnswer[4] &&
                            thirdGuessText[5] == wordSolveAnswer[5] &&
                            thirdGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
            }
        func checkerGuessFour() {
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            if              fourthGuessText[1] == wordSolveAnswer[1] {
                            highlight4_1.image = correct
            }else if        fourthGuessText[1] == wordSolveAnswer[2] ||
                            fourthGuessText[1] == wordSolveAnswer[3] ||
                            fourthGuessText[1] == wordSolveAnswer[4] ||
                            fourthGuessText[1] == wordSolveAnswer[5] ||
                            fourthGuessText[1] == wordSolveAnswer[6] {
                        highlight4_1.image = wrongPosition
            }else{
                        highlight4_1.image = incorrect
                
            }
            if          fourthGuessText[2] == wordSolveAnswer[2] {
                        highlight4_2.image = correct
            }else if    fourthGuessText[2] == wordSolveAnswer[1] ||
                            fourthGuessText[2] == wordSolveAnswer[3] ||
                            fourthGuessText[2] == wordSolveAnswer[4] ||
                            fourthGuessText[2] == wordSolveAnswer[5] ||
                            fourthGuessText[2] == wordSolveAnswer[6] {
                        highlight4_2.image = wrongPosition
            }else
            {           highlight4_2.image = incorrect
                
            }
            if          fourthGuessText[3] == wordSolveAnswer[3] {
                        highlight4_3.image = correct
            }else if    fourthGuessText[3] == wordSolveAnswer[1] ||
                            fourthGuessText[3] == wordSolveAnswer[2] ||
                            fourthGuessText[3] == wordSolveAnswer[4] ||
                            fourthGuessText[3] == wordSolveAnswer[5] ||
                            fourthGuessText[3] == wordSolveAnswer[6] {
                        highlight4_3.image = wrongPosition
            }else
            {           highlight4_3.image = incorrect
                
            }
            if          fourthGuessText[4] == wordSolveAnswer[4] {
                        highlight4_4.image = correct
            }else if    fourthGuessText[4] == wordSolveAnswer[1] ||
                            fourthGuessText[4] == wordSolveAnswer[2] ||
                            fourthGuessText[4] == wordSolveAnswer[3] ||
                            fourthGuessText[4] == wordSolveAnswer[5] ||
                            fourthGuessText[4] == wordSolveAnswer[6] {
                        highlight4_4.image = wrongPosition
            }else
            {           highlight4_4.image = incorrect
                
            }
            if          fourthGuessText[5] == wordSolveAnswer[5] {
                        highlight4_5.image = correct
            }else if    fourthGuessText[5] == wordSolveAnswer[1] ||
                            fourthGuessText[5] == wordSolveAnswer[2] ||
                            fourthGuessText[5] == wordSolveAnswer[3] ||
                            fourthGuessText[5] == wordSolveAnswer[4] ||
                            fourthGuessText[5] == wordSolveAnswer[6] {
                        highlight4_5.image = wrongPosition
            }else
            {           highlight4_5.image = incorrect
                
            }
            if          fourthGuessText[6] == wordSolveAnswer[6] {
                        highlight4_6.image = correct
            }else if    fourthGuessText[6] == wordSolveAnswer[1] ||
                            fourthGuessText[6] == wordSolveAnswer[2] ||
                            fourthGuessText[6] == wordSolveAnswer[3] ||
                            fourthGuessText[6] == wordSolveAnswer[4] ||
                            fourthGuessText[6] == wordSolveAnswer[5] {
                        highlight4_6.image = wrongPosition
            }else
            {           highlight4_6.image = incorrect
                
            }
            
            if          fourthGuessText[1] == wordSolveAnswer[1] &&
                            fourthGuessText[2] == wordSolveAnswer[2] &&
                            fourthGuessText[3] == wordSolveAnswer[3] &&
                            fourthGuessText[4] == wordSolveAnswer[4] &&
                            fourthGuessText[5] == wordSolveAnswer[5] &&
                            fourthGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
            }
        
        func checkerGuessFive() {
            
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            if              fifthGuessText[1] == wordSolveAnswer[1] {
                            highlight5_1.image = correct
            }else if        fifthGuessText[1] == wordSolveAnswer[2] ||
                            fifthGuessText[1] == wordSolveAnswer[3] ||
                            fifthGuessText[1] == wordSolveAnswer[4] ||
                            fifthGuessText[1] == wordSolveAnswer[5] ||
                            fifthGuessText[1] == wordSolveAnswer[6] {
                        highlight5_1.image = wrongPosition
            }else{
                        highlight5_1.image = incorrect
                
            }
            if          fifthGuessText[2] == wordSolveAnswer[2] {
                        highlight5_2.image = correct
            }else if    fifthGuessText[2] == wordSolveAnswer[1] ||
                            fifthGuessText[2] == wordSolveAnswer[3] ||
                            fifthGuessText[2] == wordSolveAnswer[4] ||
                            fifthGuessText[2] == wordSolveAnswer[5] ||
                            fifthGuessText[2] == wordSolveAnswer[6] {
                        highlight5_2.image = wrongPosition
            }else
            {           highlight5_2.image = incorrect
                
            }
            if          fifthGuessText[3] == wordSolveAnswer[3] {
                        highlight5_3.image = correct
            }else if    fifthGuessText[3] == wordSolveAnswer[1] ||
                            fifthGuessText[3] == wordSolveAnswer[2] ||
                            fifthGuessText[3] == wordSolveAnswer[4] ||
                            fifthGuessText[3] == wordSolveAnswer[5] ||
                            fifthGuessText[3] == wordSolveAnswer[6] {
                        highlight5_3.image = wrongPosition
            }else
            {           highlight5_3.image = incorrect
                
            }
            if          fifthGuessText[4] == wordSolveAnswer[4] {
                        highlight5_4.image = correct
            }else if    fifthGuessText[4] == wordSolveAnswer[1] ||
                            fifthGuessText[4] == wordSolveAnswer[2] ||
                            fifthGuessText[4] == wordSolveAnswer[3] ||
                            fifthGuessText[4] == wordSolveAnswer[5] ||
                            fifthGuessText[4] == wordSolveAnswer[6] {
                        highlight5_4.image = wrongPosition
            }else
            {           highlight5_4.image = incorrect
                
            }
            if          fifthGuessText[5] == wordSolveAnswer[5] {
                        highlight5_5.image = correct
            }else if    fifthGuessText[5] == wordSolveAnswer[1] ||
                            fifthGuessText[5] == wordSolveAnswer[2] ||
                            fifthGuessText[5] == wordSolveAnswer[3] ||
                            fifthGuessText[5] == wordSolveAnswer[4] ||
                            fifthGuessText[5] == wordSolveAnswer[6] {
                        highlight5_5.image = wrongPosition
            }else
            {           highlight5_5.image = incorrect
                
            }
            if          fifthGuessText[6] == wordSolveAnswer[6] {
                        highlight5_6.image = correct
            }else if    fifthGuessText[6] == wordSolveAnswer[1] ||
                            fifthGuessText[6] == wordSolveAnswer[2] ||
                            fifthGuessText[6] == wordSolveAnswer[3] ||
                            fifthGuessText[6] == wordSolveAnswer[4] ||
                            fifthGuessText[6] == wordSolveAnswer[5] {
                        highlight5_6.image = wrongPosition
            }else
            {           highlight5_6.image = incorrect
                
            }
            
            if          fifthGuessText[1] == wordSolveAnswer[1] &&
                            fifthGuessText[2] == wordSolveAnswer[2] &&
                            fifthGuessText[3] == wordSolveAnswer[3] &&
                            fifthGuessText[4] == wordSolveAnswer[4] &&
                            fifthGuessText[5] == wordSolveAnswer[5] &&
                            fifthGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
            }
        
        func checkerGuessSix() {
            let correct = #imageLiteral(resourceName: "green")
            let wrongPosition = #imageLiteral(resourceName: "orange")
            let incorrect = #imageLiteral(resourceName: "red")
            
            if              sixthGuessText[1] == wordSolveAnswer[1] {
                            highlight6_1.image = correct
            }else if        sixthGuessText[1] == wordSolveAnswer[2] ||
                            sixthGuessText[1] == wordSolveAnswer[3] ||
                            sixthGuessText[1] == wordSolveAnswer[4] ||
                            sixthGuessText[1] == wordSolveAnswer[5] ||
                            sixthGuessText[1] == wordSolveAnswer[6] {
                        highlight6_1.image = wrongPosition
            }else{
                        highlight6_1.image = incorrect
                
            }
            if          sixthGuessText[2] == wordSolveAnswer[2] {
                        highlight6_2.image = correct
            }else if    sixthGuessText[2] == wordSolveAnswer[1] ||
                            sixthGuessText[2] == wordSolveAnswer[3] ||
                            sixthGuessText[2] == wordSolveAnswer[4] ||
                            sixthGuessText[2] == wordSolveAnswer[5] ||
                            sixthGuessText[2] == wordSolveAnswer[6] {
                        highlight6_2.image = wrongPosition
            }else
            {           highlight6_2.image = incorrect
                
            }
            if          sixthGuessText[3] == wordSolveAnswer[3] {
                        highlight6_3.image = correct
            }else if    sixthGuessText[3] == wordSolveAnswer[1] ||
                            sixthGuessText[3] == wordSolveAnswer[2] ||
                            sixthGuessText[3] == wordSolveAnswer[4] ||
                            sixthGuessText[3] == wordSolveAnswer[5] ||
                            sixthGuessText[3] == wordSolveAnswer[6] {
                        highlight6_3.image = wrongPosition
            }else
            {           highlight6_3.image = incorrect
                
            }
            if          sixthGuessText[4] == wordSolveAnswer[4] {
                        highlight6_4.image = correct
            }else if    sixthGuessText[4] == wordSolveAnswer[1] ||
                            sixthGuessText[4] == wordSolveAnswer[2] ||
                            sixthGuessText[4] == wordSolveAnswer[3] ||
                            sixthGuessText[4] == wordSolveAnswer[5] ||
                            sixthGuessText[4] == wordSolveAnswer[6] {
                        highlight6_4.image = wrongPosition
            }else
            {           highlight6_4.image = incorrect
                
            }
            if          sixthGuessText[5] == wordSolveAnswer[5] {
                        highlight6_5.image = correct
            }else if    sixthGuessText[5] == wordSolveAnswer[1] ||
                            sixthGuessText[5] == wordSolveAnswer[2] ||
                            sixthGuessText[5] == wordSolveAnswer[3] ||
                            sixthGuessText[5] == wordSolveAnswer[4] ||
                            sixthGuessText[5] == wordSolveAnswer[6] {
                        highlight6_5.image = wrongPosition
            }else
            {           highlight6_5.image = incorrect
                
            }
            if          sixthGuessText[6] == wordSolveAnswer[6] {
                        highlight6_6.image = correct
            }else if    sixthGuessText[6] == wordSolveAnswer[1] ||
                            sixthGuessText[6] == wordSolveAnswer[2] ||
                            sixthGuessText[6] == wordSolveAnswer[3] ||
                            sixthGuessText[6] == wordSolveAnswer[4] ||
                            sixthGuessText[6] == wordSolveAnswer[5] {
                        highlight6_6.image = wrongPosition
            }else
            {           highlight6_6.image = incorrect
                
            }
            
            if          sixthGuessText[1] == wordSolveAnswer[1] &&
                            sixthGuessText[2] == wordSolveAnswer[2] &&
                            sixthGuessText[3] == wordSolveAnswer[3] &&
                            sixthGuessText[4] == wordSolveAnswer[4] &&
                            sixthGuessText[5] == wordSolveAnswer[5] &&
                            sixthGuessText[6] == wordSolveAnswer[6]{
                        correctAnswer = 1
            }else
            {}
                
            }
        
        
        @IBAction func goPressed(_ sender: Any) {
            
            if Tries == 0  && firstGuess.count == 7 {
                checkerGuessOne()
                Tries += 1
            }else if Tries == 1 && secondGuess.count == 7 {
                checkerGuessTwo()
                Tries += 1
            }else if Tries == 2 && thirdGuess.count == 7 {
                checkerGuessThree()
                Tries += 1
            }else if Tries == 3 && fourthGuess.count == 7 {
                checkerGuessFour()
                Tries += 1
            }else if Tries == 4 && fifthGuess.count == 7 {
                checkerGuessFive()
                Tries += 1
            }else if Tries == 5 && sixthGuess.count == 7 {
                checkerGuessSix()
                Tries += 1
            }else
            {bottomLabel.text = "Enter 5 letters"}
            
            solved()
        }
           
            func solved() {
            if Tries == 7 && correctAnswer == 0 {
                showAnswerLabel.text = "Unlucky, The answer was \(wordSolveAnswer)"
                showAnswerLabel.alpha = 1

            }else if correctAnswer == 1 {
                bottomLabel.text = "Well done!"
                bottomLabel.alpha = 1
                
               thisSession += 1
                headerLabel.text = "This Session: \(thisSession)  solved"
                headerLabel.alpha = 1}
            }
        
        
        @IBAction func newGameButton(_ sender: UIButton) {
            
                    
            if correctAnswer == 1 || sixthGuess.count == 7 {
                
                reset()
                answer()
                
            }else {bottomLabel.text = "Try finish this one first"
            bottomLabel.alpha = 1
            }
    }
    
    @IBAction func restartPressed(_ sender: Any) {
        
        reset()
    }
    
    
    

}
