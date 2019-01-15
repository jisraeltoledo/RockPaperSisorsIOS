//
//  ResultViewcontroller.swift
//  RockPaperSisors
//
//  Created by Alfonso Balbuena on 10/10/18.
//  Copyright © 2018 Vanglar. All rights reserved.
//

import UIKit


class ResultViewController: UIViewController {
  
  @IBOutlet weak var labelUserShot: UILabel!
  
  @IBOutlet weak var lblMachineShot: UILabel!
  @IBOutlet weak var btnResult: UIButton!
  var userShot : String?
  
  @IBAction func goBack(_ sender: Any) {
    print ("goback")
    performSegueToReturnBack()
  }
  override func viewDidLoad() {
    super.viewDidLoad()
    labelUserShot.text = userShot
    let number = Int(arc4random_uniform(3))
    print ("number \(number)")
    
    if (number == 0)
    {
      lblMachineShot.text = "rock"
      if(userShot=="rock"){
        print ("rock")
        btnResult.setBackgroundImage(UIImage(named: "itsATie.png"), for: UIControlState.normal)
      }
      if (userShot == "paper"){
        print ("paper")
        btnResult.setBackgroundImage(UIImage(named: "PaperCoversRock.jpg"), for: UIControlState.normal)
      }
      if (userShot=="sisors"){
        print ("sisors")
        btnResult.setBackgroundImage(UIImage(named: "RockCrushesScissors.jpeg"), for: .normal)
      }
    }
    if (number == 1)
    {
      lblMachineShot.text = "paper"
      if(userShot=="rock"){
        print ("rock")
        btnResult.setBackgroundImage(UIImage(named: "PaperCoversRock.jpg"), for: UIControlState.normal)
      }
      if (userShot == "paper"){
        print ("paper")
        btnResult.setBackgroundImage(UIImage(named: "itsATie.png"), for: UIControlState.normal)
        
      }
      if (userShot=="sisors"){
        print ("sisors")
        btnResult.setBackgroundImage(UIImage(named: "ScissorsCutPaper.jpg"), for: .normal)
      }
    }
    if (number == 2)
    {
      lblMachineShot.text = "scissors"
      if(userShot=="rock"){
        print ("rock")
        btnResult.setBackgroundImage(UIImage(named: "RockCrushesScissors.jpeg"), for: .normal)
      }
      if (userShot == "paper"){
        print ("paper")
        btnResult.setBackgroundImage(UIImage(named: "ScissorsCutPaper.jpg"), for: .normal)
      }
      if (userShot=="sisors"){
        print ("sisors")
        btnResult.setBackgroundImage(UIImage(named: "itsATie.png"), for: UIControlState.normal)
        
      }
    }
    
  }
  
  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
}

extension UIViewController {
  func performSegueToReturnBack()  {
    if let nav = self.navigationController {
      nav.popViewController(animated: true)
    } else {
      self.dismiss(animated: true, completion: nil)
    }
  }
}
