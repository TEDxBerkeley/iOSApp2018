//
//  ProgramViewController.swift
//  iOSApp2018
//
//  Created by Alvin Wan on 2/13/18.
//  Copyright © 2018 Alvin Wan. All rights reserved.
//

import UIKit


class ProgramViewController: UIViewController {
    
    @IBOutlet weak var session1TitleLabel: UILabel!
    @IBOutlet weak var session1TalksLabel: UILabel!
    @IBOutlet weak var session2TitleLabel: UILabel!
    @IBOutlet weak var session2TalksLabel: UILabel!
    @IBOutlet weak var session3TitleLabel: UILabel!
    @IBOutlet weak var session3TalksLabel: UILabel!
    
    let session1Talks = "10 a.m. - 12 p.m.\n\nDeCadence A Cappella\n\nChristopher Emdin\n\"Teaching & Being Ratchetdemic\"\n\nDean Ornish\n\"The Healing Power of Love & Intimac\"\n\nDoniece Sandoval\n\"Choosing to See the Invisible\"\n\nChandni Kazi\n\"My Learning Disability: A Love Story\"\n\nJennifer French\n\"How Bionic Pioneers of today can change us tomorrow\"\n\nJustin Barad\n\"A new reality for surgical training.\"\n\nDaria Musk\n\"We\'re In The Age Of The Artistpreneur\"\n\nLunch break\nRecommendations for nearby eateries and tasty cuisines\n12 - 1:10 p.m.";
    let session2Talks = "1:10 - 3 p.m.\n\nCal Ballroom\n\nDavid Lang\n\"A plan to protect our world\'s ocean\"\n\nDan Hammer\n\"Data Science for the Environment\"\n\nTeresa Ryan\n\"Ancestral Legacy of Nature’s Connections\"\n\nEric Osiakwan\n\"Kings of Africa\'s Economy\"\n\nClaudio Guglieri\n\"Making technology more natural\"\n\nTyrone Hayes\n\"Endocrine disruption, environmental justice, and the ivory \ntower: what the privileged need to know\"\n\nTED video\n\nMurray Hidary\n\"MindTravel: A Musical & Visual Journey\"\n\nIntermision - Snacks, drinks, and insightful, fun conversations\n3 - 3:30 p.m.";
    let session3Talks = "3:30 - 5 p.m.\n\nTaiko\n\nDonall O Healai\n\"The Death of Beauty\"\n\nNew Latthivongskorn\n\nMichelle Brane\n\"U.S. Immigration Policy and the Violation of Human Rights, It \ndoesn’t have to be this way\"\n\nMarianne Willamson\n\"The New American Story\"\n\nTED video\n\nHazel Miller\n\"The Power of Music to Transform a Life\"\n\nWine Reception\nChance to talk with our incredible speakers, attendees, and team\n5 - 6:30 p.m.";
    
    let sideMargin: CGFloat = 34
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        session1TalksLabel.attributedText = textWithLineSpacing(text: session1Talks)
        session2TalksLabel.attributedText = textWithLineSpacing(text: session2Talks)
        session3TalksLabel.attributedText = textWithLineSpacing(text: session3Talks)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Temporary lock in portrait mode.
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    func textWithLineSpacing(text: String) -> NSMutableAttributedString {
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSParagraphStyleAttributeName, value: paragraphStyle, range:NSMakeRange(0, attributedString.length))
        return attributedString
    }
}
