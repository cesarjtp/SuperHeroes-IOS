//
//  DetailViewController.swift
//  SuperHeroes-iOS
//
//  Created by Mañanas on 5/9/24.
//

import UIKit

class DetailViewController: UIViewController {
    
        @IBOutlet weak var avatarImageView: UIImageView!
        // Decripcion
        @IBOutlet weak var realNameLabel: UILabel!
        @IBOutlet weak var publisherLabel: UILabel!
        @IBOutlet weak var placeOfBirthLabel:UILabel!
        @IBOutlet weak var alignmentLabel: UILabel!
        //stack
        @IBOutlet weak var intelligenceLabel: UILabel!
        @IBOutlet weak var strengthLabel: UILabel!
        @IBOutlet weak var speedLabel: UILabel!
        @IBOutlet weak var durabilityLabel: UILabel!
        @IBOutlet weak var powerLabel: UILabel!
        @IBOutlet weak var combatLabel: UILabel!
        @IBOutlet weak var intelligenceProgressView: UIProgressView!
        @IBOutlet weak var strengthProgressView: UIProgressView!
        @IBOutlet weak var speedProgressView: UIProgressView!
        @IBOutlet weak var durabilityProgressView: UIProgressView!
        @IBOutlet weak var powerProgressView: UIProgressView!
        @IBOutlet weak var combatProgressView: UIProgressView!
    
    var superHero: SuperHero? = nil

    override func viewDidLoad() {
            super.viewDidLoad()
            
            avatarImageView.roundCorners(radius: 8)

            // Do any additional setup after loading the view.
            if let superHero = superHero {
                self.navigationItem.title = superHero.name
                avatarImageView.loadFrom(url: superHero.image.url)
                
                realNameLabel.text = superHero.biography.realName
                publisherLabel.text = superHero.biography.publisher
                placeOfBirthLabel.text = superHero.biography.placeOfBirth
                alignmentLabel.text = superHero.biography.alignment.uppercased()
                if (superHero.biography.alignment == "good") {
                    alignmentLabel.textColor = UIColor.systemGreen
                } else {
                    alignmentLabel.textColor = UIColor.systemRed
                }
                
                intelligenceLabel.text = superHero.powerstats.intelligence
                strengthLabel.text = superHero.powerstats.strength
                speedLabel.text = superHero.powerstats.speed
                durabilityLabel.text = superHero.powerstats.durability
                powerLabel.text = superHero.powerstats.power
                combatLabel.text = superHero.powerstats.combat
                
                intelligenceProgressView.progress = (Float(superHero.powerstats.intelligence) ?? 0.0) / 100
                strengthProgressView.progress = (Float(superHero.powerstats.strength) ?? 0.0) / 100
                speedProgressView.progress = (Float(superHero.powerstats.speed) ?? 0.0) / 100
                durabilityProgressView.progress = (Float(superHero.powerstats.durability) ?? 0.0) / 100
                powerProgressView.progress = (Float(superHero.powerstats.power) ?? 0.0) / 100
                combatProgressView.progress = (Float(superHero.powerstats.combat) ?? 0.0) / 100
            }
        }
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */

    }
