//
//  TeamViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/13/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class TeamViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var teamTableView: UITableView!
    
    let teamNames = ["Aaron Chelliah","Aileen Ho","Alvin Wan","Alyssa Plese","Ananya Krishnan","Andrew Veenstra","Chris Lew","Felipe Cuellar","Ishan Sharma","Krupa Adusumilli","Leilani Gutierrez-Palominos","Madhav Nekkar","Mehdi Kazi","Renee Blodgett","Saher Daredia","Sean Kelly"]
    let teamBylines = ["Manager of Outreach","","Director of Technology","","","Director of Logistics","Senior Team Consultant","","Manager of Logistics","Director of Finance","Curator","","Manager of Technology","Co-Curator & Strategic Advisor","Manager of Partnerships","Co-Curator"]
    let teamImageUris = ["aaron.JPG","aileen.jpg","alvin.jpg","alyssa.jpg","ananya.jpg","andrew.jpg","chris.jpg","felipe.jpg","ishan.jpg","krupa.jpg","leilani.jpg","madhav.jpg","mehdi.jpg","renee.JPG","saher.jpg","sean.jpg"]
    let teamDescriptions =  ["Aaron Chelliah is a third year at UC Berkeley, studying economics. Born and raised in sunny Manhattan Beach California, Aaron followed his passion for exploring new ideas by working with TEDxManhattanBeach and debating international topics in Model United Nations. He also enjoyed being opinion editor of the school newspaper for the same reason. Aaron enjoys hiking, discovering new music, and hanging out with his friends. You can usually find him sampling the various cuisines around Berkeley, but you could also try emailing him at achelliah@berkeley.edu.","Aileen Ho is a sophomore at UC Berkeley studying molecular cell biology and bioengineering. She grew up in a socioeconomically diverse community within the cradle of aerospace - Hawthorne, CA, and is passionate about increasing inclusivity in STEM education. Aileen will soon be starting research in stem cells and regenerative medicine. Her other interests include wearing copious amounts of denim, reading Oliver Sacks, and editing personal statements. Drop her a line at aileen.ho@berkeley.edu.","I’m a diglot by definition, lactose intolerant by birth but an ice-cream lover at heart. Call me wonky, wacky, whatever you will, but I just go by Alvin. Ask anyone that’s met me: I’m known for a contagious smile.I'm a fourth-year undergraduate at UC Berkeley studying Electrical Engineering and Computer Science. My passions include teaching, designing, and speaking; my academic interests lie in deep reinforcement learning and computer vision, specifically perception for autonomous driving.For TEDxBerkeley, I manage technology and volunteers. Want to connect? Email me at alvin (at) tedxberkeley.org. For more, see my <a href='http://alvinwan.com/summary'>professional summary</a>.","Alyssa is currently a first-year student studying Environmental Economics and Policy in the College of Natural Resources. Aside from her work with TED, Alyssa is involved with the Student Food Collective and is interested in environmental advocacy and sustainable agriculture. A biker, a hiker, a baker and art-maker, some of Alyssa’s other hobbies include impromptu rhyming, reading, and rock climbing. If you need to get a hold of her, shoot her an email at alyssa@tedxberkeley.edu","Ananya Krishnan is a first-year intended cognitive science major and computer science minor. Hoping to eventually pursue a career in law, Ananya is interested in exploring the intersection of science and law, studying neuroscience to explain decision-making, aggression and violence. Born and raised in San Diego, Ananya loves travelling, learning about other cultures, exploring the outdoors, taking risks and discussing international politics. Catch Ananya playing with the puppies on Sproul, binge watching shows on Netflix, or at ananya@tedxberkeley.org.","Andrew Veenstra is a fourth-year civil engineering major and intended EECS minor. Aside from TEDxBerkeley, Andrews is developing apps for river stream-flow analysis under Professor Thompson and enjoys spending time with his brothers in Theta Tau, Berkeley’s co-ed engineering fraternity. Some of his hobbies include hiking, photography, and daydreaming about the beach. Andrew can be found at any cafe drinking a double shot of espresso, or he can be emailed at andrew@tedxberkeley.org.","Chris Lew is a Senior Consultant to the TEDxBerkeley team who brings 4 years of experience as a previous Curator and Manager of Operations & Logistics of the event. Chris is a biotech strategy consultant at DeciBio, a start-up in Santa Monica, CA. The unique multidisciplinary, entrepreneurial space of TEDx events sparked his interest in pursuing entrepreneurship at the intersection of biotechnology, health, and human-centered design.","Felipe Cuellar is a First Year Mechanical Engineer at Berkeley. Drawn into the world of TED by his fascination of space and its exploration, Felipe looks forward to planning this years TED event so that the citizens of Berkeley can learn just a little more about the pale blue dot that we inhabit todoay.","Ishan Sharma is currently a sophomore at Cal pursuing Economics and Business Admninistration. He grew up in Cupertino, California, where he grew up around technology while also staying civically engaged. Ishan hopes to stay involved in local government and pursue entrepreneurship. In his free time, Ishan’s interests include downhill longboarding, watching TEDTalks, spitballing start-up ideas, staying civically engaged, working out, and playing soccer.","Krupa Adusumilli is a 4th year student at UC Berkeley double majoring in Economics and Business Administration. Aside from TEDxBerkeley, Krupa is passionate about social business as a means to reaching gender parity all around the world. When she isn’t sending out emails to get corporate sponsors for TEDxBerkeley or updating the TEDxBerkeley budget you can find her working at Berkeley-Haas’ Center for Gender, Equity & Leadership, co-writing a book, or conceptualizing social business plans. Regardless you can always contact her at krupaadusumilli@tedxberkeley.org.","Leilani Gutierrez-Palominos, TEDxBerkeley 2018’s Curator, is a fourth-year student at UC Berkeley majoring in Molecular & Cell Biology and minoring in Global Poverty & Practice. Although she has a Hawaiian name, she was born in Guadalajara, Jalisco, Mexico and grew up in Fresno, CA. She aspires to be a doctor with a focus on underserved communities. Leilani investigates toxicology with the Nomura Research Group, is a Peer Advisor for the GPP minor, and tutors for the Biology Scholars Program. As member of the Cal Triathlon Team, she can be found hydrating her gills in any nearby body of water. Contact her at leilani@tedxberkeley.org.","Madhav is a freshman at UC Berkeley hoping to major in economics and eventually pursue a career in medicine. Drawn to the TEDx space due to its interdisciplinary nature, Madhav is especially interested in exploring the intersection of health and society, including healthcare systems and disparities. He can be found poring over the latest issue of The Economist, sampling any (vegetarian) cuisine he can get his hands on, or at madhav@tedxberkeley.org. ","Mehdi Kazi is a third year at UC Berkeley, studying Computer Science. Aside from TEDxBerkeley, he plans to explore his passions for innovation and technology by participating in different hackathons in the area and working on small projects with friends. Mehdi loves food (especially watermelon!), exploring new places, and meeting new people. You will most likely find him at coffee shops across campus with one hand on his laptop and the other on a cup of iced coffee, but you can always reach him at mehdi@tedxberkeley.com.","Renee Blodgett is founder of branding and communications consultancy <a href='http://magicsaucemedia.com'>Magic Sauce Media</a>, which is dedicated to helping companies and individuals get ahead through smart go-to-market strategies. Known globally as a master of storytelling for the lifestyle, travel and technology industries, she is also founder and managing editor of <a href='http://weblogtheworld.com'>We Blog the World</a>, an online luxury travel site focused on Transformative Travel, where luxury, adventure and wellness meet. She was selected as a top social media influencer by Forbes & a top Bay Area digital influencer by the United Nations. Prolific on social media, you can follow her <a href='http://twitter.com/magicsaucemedia'>@magicsaucemedia</a>, <a href='http://instagram.com/weblogtheworld'>@weblogtheworld</a> and <a href='http://instagram.com/luxuryfoodies'>@luxuryfoodies.</a>","Saher Daredia is sophomore at UC Berkeley majoring in Public Health and minoring in Global Poverty and Practice. Aside from TEDxBerkeley, Saher explores the union of toxicology and the alleviation of health inequities in developing countries through her research in the UC Berkeley School of Public Health. Because of passion for research and her advocacy work with the Cal Undergraduate Public Health Coalition, Saher hopes to pursue a career that allows her to use diverse approaches to promote the health of marginalized communities. In her free time, Saher enjoys camping, cuddling with her dog, and consuming copious amounts of coffee. When her nose is not buried in a book or container of hummus, you can find her at saher@tedxberkeley.org. ","Sean Kelly is a fourth-year bioengineering major at UC Berkeley. He works on creating prototypes for mobile microscopy devices for use as portable diagnostic devices in developing nations in Professor Fletcher's lab. He enjoys reading novels such as Lev Grossman's The Magicians, drawing and graphic design, and occcasionally gets paid to watch people play video games. You can find him staring at either a book or computer screen, or at sean@tedxberkeley.org."]

    
    let imageDimension: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        teamTableView.dataSource = self
        teamTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath as IndexPath) as! TeamTableViewCell
        cell.teamNameLabel.text = teamNames[indexPath.item]
        cell.teamBylineLabel.text = teamBylines[indexPath.item]
        cell.teamImageView.image = UIImage(named: teamImageUris[indexPath.item])?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension))
        
        /* this is where the magic happens, create a UIView and set its
         backgroundColor to what ever color you like then set the cell's
         selectedBackgroundView to your created View */
        
        let backgroundView = UIView()
        backgroundView.backgroundColor = UIColor(red: 190/255, green: 3/255, blue: 0/255, alpha: 1)
        cell.selectedBackgroundView = backgroundView
        return cell
    }

    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewController = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! DetailViewController
        detailViewController.display(
            imageUri: teamImageUris[indexPath.item],
            name: teamNames[indexPath.item],
            byline: teamBylines[indexPath.item],
            description: teamDescriptions[indexPath.item])
        present(detailViewController, animated: true, completion: nil)
    }
    
    // Temporary lock in portrait mode.
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
}
