//
//  DetailViewController.swift
//  ios101-project6-tumblr
//
//  Created by Shoaib Ashfaq on 3/31/24.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {
    @IBOutlet weak var pictureView: UIImageView!

    @IBOutlet weak var summaryView: UITextView!
   
    
    
    var post: Post!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Details"
        summaryView.isEditable = false;
        summaryView.isScrollEnabled = true;
        summaryView.text = post.caption.trimHTMLTags()
        
        if let photo = post.photos.first {
            let url = photo.originalSize.url
            Nuke.loadImage(with: url, into: pictureView)
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
