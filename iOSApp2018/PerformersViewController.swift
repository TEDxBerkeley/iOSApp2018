//
//  PerformersViewController.swift
//  iOSApp2017
//
//  Created by Alvin Wan on 1/12/17.
//  Copyright © 2017 Alvin Wan. All rights reserved.
//


import UIKit


class PerformersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var performersTableView: UITableView!
    
    
    let performerNames = ["Cal Ballroom","DeCadence","Cal Taiko"]
    let performerBylines = ["International Dance Team","Performer","Japanese Drmming"]
    let performerImageUris = ["CalBallroom.jpg","DeCadance.jpg","Taiko.jpg"]
    let performerDescriptions =  ["Cal Ballroom UC Berkeley’s one and only competitive International Ballroom Dance Team and the largest team on the West Coast. We offer Cal Students high quality dance instruction through our professional coaches in International Latin, International Standard, and American Smooth styles as well as attend competitions regionally and nationally. Our team members have both placed and won national titles in competiti ons across the whole country.","DeCadence? DeCadance? DeCádince? What or who is that? DeCadence (“DEE-KAY-DENCE”) is a student-run, co-ed a cappella group from UC Berkeley that loves to belt top 40 hits, indie rock, jazz, and almost everything in between.  We're all about singing, performing, and having fun!  You can find us jamming out at our weekly campus performances under Sather Gate at noon on Wednesdays. If you like what you see, check us out on facebook and instagram, and please visit our website (decadence.berkeley.edu)","In the Spring of 2005, a small-but-committed group of students pooled together their resources and formed UC Berkeley's first taiko group. Since then, Cal Raijin Taiko has gone on to become Berkeley's premier Japanese drumming performance ensemble. With a repertoire consisting entirely of original compositions, Cal Raijin Taiko performs to spread the knowledge, love, and passion of taiko to both the campus and the surrounding communities. Over the years since our founding, the members of Cal Raijin Taiko have composed more than a dozen unique and vibrant songs, and performed for scores of audiences large and small. Our alumni have spread throughout the country, many of them going on to found entirely new taiko groups. Every fall we accept new members to make up the next Generation of our Cal Raijin Taiko family."]

    
    let imageDimension: CGFloat = 50
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        performersTableView.dataSource = self
        performersTableView.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return performerNames.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) ->   UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PerformerCell", for: indexPath as IndexPath) as! PerformerTableViewCell
        cell.performerNameLabel.text = performerNames[indexPath.item]
        cell.performerBylineLabel.text = performerBylines[indexPath.item]
        cell.performerImageView.image = UIImage(named: performerImageUris[indexPath.item])?.circle?.imageResize(sizeChange: CGSize(width: imageDimension, height: imageDimension))
        
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
            imageUri: performerImageUris[indexPath.item],
            name: performerNames[indexPath.item],
            byline: performerBylines[indexPath.item],
            description: performerDescriptions[indexPath.item])
        present(detailViewController, animated: true, completion: nil)
    }
    
    // Temporary lock in portrait mode.
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
}
