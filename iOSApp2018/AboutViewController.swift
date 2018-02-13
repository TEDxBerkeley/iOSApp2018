//
//  AboutViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/13/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class AboutViewController: UIViewController {
    
    @IBOutlet weak var themeTitleLabel: UILabel!
    @IBOutlet weak var themeCopyLabel: UILabel!
    @IBOutlet weak var TEDxTitleLabel: UILabel!
    @IBOutlet weak var TEDxCopyLabel: UILabel!
    @IBOutlet weak var TEDTitleLabel: UILabel!
    @IBOutlet weak var TEDCopyLabel: UILabel!
    
    let sideMargin: CGFloat = 34
    
    let themeCopy = "When is the last time you looked at a map? As it turns out, the map you choose determines what you see. Various perspectives will show you: Alaska can cover Finland, Sweden, and Norway; and Africa is larger than China, India, and the contiguous United States combined. The lenses you pick are important, and with our 2018 TEDxBerkeley event, we hope to give you a sense of where we are. In fact, we want to pinpoint just where you are. On February, 17, 2018, we will be in Zellerbach Hall, Berkeley, California, but let’s consider a dimension other than physical space; you stand amid technological, scientific, cultural, and social advancement, each of them a function of time. Consider any pair to be our axes, and we now have a new map across history, events, and places. Each map gives rise to a new perspective, telling a different story, and we want to share a select few to ultimately build a better map of the world, beyond two dimensions. However, to see through each of these lenses, we’ll need your help. Join us in finding our place, pinpointing that marker and red dot: You are here, and so are we."
    
    let TEDxCopy = "x = independently organized event. In the spirit of ideas worth spreading, TEDx is a program of local, self-organized events that bring people together to share a TED-like experience. At a TEDx event, TEDTalks video and live speakers combine to spark deep discussion and connection in a small group. These local, self-organized events are branded TEDx, where x = independently organized TED event. The TED Conference provides general guidance for the TEDx program, but individual TEDx events are self-organized. (Subject to certain rules and regulations.)"
    
    let TEDCopy = "TED is a nonprofit organization devoted to Ideas Worth Spreading. Started as a four-day conference in California 25 years ago, TED has grown to support those world-changing ideas with multiple initiatives. The annual TED Conference invites the world’s leading thinkers and doers to speak for 18 minutes. Their talks are then made available, free, at TED.com. TED speakers have included Bill Gates, Al Gore, Jane Goodall, Elizabeth Gilbert, Sir Richard Branson, Nandan Nilekani, Philippe Starck, Ngozi Okonjo-Iweala, Isabel Allende and former UK Prime Minister Gordon Brown. The annual TED Conference takes place each spring in Long Beach, California, along with the TEDActive simulcast in Palm Springs; the annual TEDGlobal conference is held each summer in Edinburgh, Scotland. TED’s media initiatives include TED.com, where new TEDTalks are posted daily, the recently launched TED-Ed platform for students and educators, the Open Translation Project, which provides subtitles and interactive transcripts as well as the ability for any TEDTalk to be translated by volunteers worldwide, and TEDBooks, short e-books by speakers that elaborate on a single idea originally presented on TED’s stage. TED has established the annual TED Prize, where exceptional individuals with a wish to change the world are given the opportunity to put their wishes into action; TEDx, which offers individuals or groups a way to host local, self-organized events around the world, and the TED Fellows program, helping world-changing innovators from around the globe to become part of the TED community and, with its help, amplify the impact of their remarkable projects and activities. Follow TED on Twitter or on Facebook. Follow TED on Twitter at twitter.com/TEDTalks, or on Facebook at facebook.com/TED."
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        themeCopyLabel.attributedText = textWithLineSpacing(text: themeCopy)
        TEDxCopyLabel.attributedText = textWithLineSpacing(text: TEDxCopy)
        TEDCopyLabel.attributedText = textWithLineSpacing(text: TEDCopy)
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
