//
//  ViewController.swift
//  SelfStudy3
//
//  Created by sungkwon kim on 2018. 8. 17..
//  Copyright © 2018년 cirale. All rights reserved.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    @IBOutlet weak var switchButton: UIButton!
    @IBOutlet weak var flashImageView: UIImageView!
    
    var isOn = false
    var soundPlayer: AVAudioPlayer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareSound()
        
    }
    func prepareSound(){
        let path = Bundle.main.path(forResource: "switch.wav", ofType:nil)!
        let url = URL(fileURLWithPath: path)
        
        do{
            soundPlayer = try AVAudioPlayer(contentsOf: url)
            soundPlayer?.prepareToPlay()
        }
        catch{
            
        }
    }
    
    @IBAction func switchTapped(_ sender: Any) {
        
        isOn = !isOn
        
        soundPlayer?.play()
        
        if isOn == true {
            switchButton.setImage(UIImage(named: "onSwitch"), for: .normal)
            flashImageView.image = UIImage(named: "onBG")
        }
        else{
            switchButton.setImage(UIImage(named: "offSwitch"), for: .normal)
            flashImageView.image = UIImage(named: "offBG")
        }
    }
    
}

