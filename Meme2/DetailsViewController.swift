//
//  DetailsViewController.swift
//  Meme2
//
//  Created by Gilles on 11/1/15.
//  Copyright © 2015 gillesvdp. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController, UINavigationControllerDelegate {

    @IBOutlet weak var detailsImage: UIImageView!
    var meme : Meme!
    
    @IBAction func editButtonPressed(sender: AnyObject) {
        performSegueWithIdentifier("editMeme", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "editMeme" {
            let destinationVC = segue.destinationViewController as! MemeEditorViewController
            destinationVC.memeToEdit = meme
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        detailsImage.image = meme.finalImage
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
