//
//  ViewController.swift
//  rotateButton3
//
//  Created by Indra Kurniawan on 26/10/20.
//

import UIKit

class ViewController: UIViewController {

    // Set the different options of rotation
    var rotationOptions: Array = [0,90,180,270]

    // Set the original matrix
    var matrix: [[Int]] = [
        [0,0,0,0],
        [0,0,0,0],
        [0,0,0,0]
    ]
    
    //b1 == button1
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    @IBOutlet weak var b11: UIButton!
    @IBOutlet weak var b12: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        randomizeMatrix()
    }
    
    //b1t == button1tapped
    @IBAction func b1t(_ sender: Any) {
        rotate(view: self.b1)
    }
    @IBAction func b2t(_ sender: Any) {
        rotate(view: self.b2)
    }
    @IBAction func b3t(_ sender: Any) {
        let row: Int = 0
        let col: Int = 2
        // we add 90° to the current angle
        // ex: 270 + 90 => 0
        // ex: 90 + 90 => 180
        // ternary condition:
        // value = condition ? if_true : if_false
        matrix[row][col] = matrix[row][col] + 90 >= 360 ? 0 : matrix[row][col] + 90
        
        // we rotate the button with the new angle value
        rotate(view: self.b3)
        
        // Let's check if the grid is valid
        verifyGoal()
    }
    @IBAction func b4t(_ sender: Any) {
        rotate(view: self.b4)
    }
    @IBAction func b5t(_ sender: Any) {
        rotate(view: self.b5)
    }
    @IBAction func b6t(_ sender: Any) {
        rotate(view: self.b6)
    }
    @IBAction func b7t(_ sender: Any) {
        rotate(view: self.b7)
    }
    @IBAction func b8t(_ sender: Any) {
        rotate(view: self.b8)
    }
    @IBAction func b9t(_ sender: Any) {
        rotate(view: self.b9)
    }
    @IBAction func b10t(_ sender: Any) {
        rotate(view: self.b10)
    }
    @IBAction func b11t(_ sender: Any) {
        rotate(view: self.b11)
    }
    @IBAction func b12t(_ sender: Any) {
        rotate(view: self.b12)
    }
    
    func rotate(view: UIView) {
        UIView.animate(withDuration: 0.05, animations: ({
            view.transform = view.transform.rotated(by: CGFloat(Double.pi/2))
        }))
    }
    
    
    func randomizeMatrix() {
        for r in 0...2 {
            for c in 0...3 {
                let randomAngleIndex: Int = Int.random(in: 0...3)
                //print("angle index: \(randomAngleIndex)")
                matrix[r][c] = rotationOptions[randomAngleIndex]
                
                //Need to check how to call dynamically buttons on the storyboard
                //this["button\(r)\(c)"].rotation = randomAngleIndex
            }
        }
    }
    
    func verifyGoal() {
        
        var status = true
        
        // let's check every cells
        for r in 0...2 {
            for c in 0...3 {
                // let's check if the angle is right: angle = 0
                if matrix[r][c] != 0 {
                    // If there is one wrong, then it's false
                    status = false
                }
            }
        }
        
        if status {
            // just do everything you want to celebrate success!!! woohhooooo!!!!!!
        }
    }


}

