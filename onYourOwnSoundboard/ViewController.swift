//
//  ViewController.swift
//  onYourOwnSoundboard
//
//  Created by Sumaiya Mohamed on 10/17/22.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    var tappedSound:AVAudioPlayer?
    
    @IBOutlet weak var ImageArea: UIImageView!
    
    @IBOutlet weak var jazzOutlet: UIButton!
    
    @IBOutlet weak var classicalOut: UIButton!
    
    @IBOutlet weak var bluesOut: UIButton!
    
    @IBOutlet weak var discoOut: UIButton!
    
    @IBOutlet weak var countryOut: UIButton!
    
    @IBOutlet weak var technoOut: UIButton!
    
    @IBOutlet weak var rockOut: UIButton!
    
    @IBOutlet weak var latinOut: UIButton!
    
    @IBOutlet weak var stopOut: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        jazzOutlet.layer.cornerRadius = 15
        classicalOut.layer.cornerRadius = 15
        bluesOut.layer.cornerRadius = 15
        discoOut.layer.cornerRadius = 15
        countryOut.layer.cornerRadius = 15
        technoOut.layer.cornerRadius = 15
        rockOut.layer.cornerRadius = 15
        latinOut.layer.cornerRadius = 15
        stopOut.layer.cornerRadius = 15
    }
    func playSoundOne(whatSound: String){
        let path = Bundle.main.path(forResource: whatSound, ofType: "mp3")!
        let url = URL(fileURLWithPath: path)
        do {
            tappedSound = try AVAudioPlayer(contentsOf: url)
            tappedSound?.play()

        } catch {
            print("sound did not load")
        }
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
        ImageArea.image = UIImage (named: whatSound)
    }
    @IBAction func playClassical(_ sender: UIButton) {
        playSoundOne(whatSound: "classical")
       
    }
    @IBAction func playBlues(_ sender: UIButton) {
        playSoundOne(whatSound: "blues")
    }
    @IBAction func playjazz(_ sender: UIButton) {
        playSoundOne(whatSound: "jazz")
    }
    @IBAction func playDisco(_ sender: UIButton) {
        playSoundOne(whatSound: "disco")
    }
    @IBAction func playCountry(_ sender: UIButton) {
            playSoundOne(whatSound: "country")
    }
    @IBAction func playTechono(_ sender: UIButton) {
                playSoundOne(whatSound: "techno")
    }
    @IBAction func playRock(_ sender: UIButton) {
                    playSoundOne(whatSound: "rock")
    }
    @IBAction func playLatin(_ sender: UIButton) {
                        playSoundOne(whatSound: "Latin")
    }
    @IBAction func stopButton(_ sender: UIButton) {
        tappedSound?.stop()
    }
}

