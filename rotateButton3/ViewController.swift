//
//  ViewController.swift
//  rotateButton3
//
//  Created by Indra Kurniawan on 26/10/20.
//

import UIKit

class ViewController: UIViewController {

    
    
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
    }
    
    //b1t == button1tapped
    @IBAction func b1t(_ sender: Any) {
        rotate(view: self.b1)
    }
    @IBAction func b2t(_ sender: Any) {
        rotate(view: self.b2)
    }
    @IBAction func b3t(_ sender: Any) {
        rotate(view: self.b3)
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


}

