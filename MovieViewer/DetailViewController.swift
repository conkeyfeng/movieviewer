 //
//  DetailViewController.swift
//  MovieViewer
//
//  Created by Chenyang Feng on 7/18/16.
//  Copyright © 2016 Chenyang Feng. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var posterImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var overViewLabel: UILabel!
    @IBOutlet weak var inforView: UIView!
    @IBOutlet weak var srollView: UIScrollView!
    
    var movie: NSDictionary!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        srollView.contentSize = CGSize(width: srollView.frame.size.width, height: inforView.frame.origin.y + inforView.frame.size.height)
        
        
        print(movie)
        let title = movie["title"] as? String
        titleLabel.text = title
        let overview = movie["overview"]  as? String
        overViewLabel.text = overview
        overViewLabel.sizeToFit()
        
        if let posterPath = movie["backdrop_path"] as? String{
            let baseUrl = "http://image.tmdb.org/t/p/w500"
            let imageUrl = NSURL(string: baseUrl+posterPath)
            posterImageView.setImageWithURL(imageUrl!)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
