//
//  ViewController.swift
//  RockPaperSisors
//
//  Created by Alfonso Balbuena on 10/10/18.
//  Copyright © 2018 Vanglar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var sisors: UIButton!
  @IBOutlet weak var rock: UIButton!
  @IBOutlet weak var paper: UIButton!
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    print (segue.destination)
    if segue.identifier == "rockSegue" {
      let resultController = segue.destination as! ResultViewController
      resultController.userShot = "rock"
    }
    if segue.identifier == "paperSegue" {
      let resultController = segue.destination as! ResultViewController
      resultController.userShot = "paper"
    }
    if segue.identifier == "sisorsSegue" {
      let resultController = segue.destination as! ResultViewController
      resultController.userShot = "sisors"
    }
  }

}

