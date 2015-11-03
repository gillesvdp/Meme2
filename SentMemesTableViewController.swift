//
//  SentMemesTableViewController.swift
//  Meme2
//
//  Created by Gilles on 11/1/15.
//  Copyright © 2015 gillesvdp. All rights reserved.
//

import UIKit

class SentMemesTableViewController: UITableViewController {
    
    var memes: [Meme] {
        return (UIApplication.sharedApplication().delegate as! AppDelegate).memes
    }
    
    override func viewWillAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // Configuring the table
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! MemeTableCellTableViewCell
        cell.memeImage.image = memes[indexPath.row].finalImage
        cell.memeText.text = memes[indexPath.row].topText + " " + memes[indexPath.row].bottomText
        return cell
    }
    
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        return true
    }
    
    override func tableView(tableView: UITableView, commitEditingStyle  editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath:   NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete {
            (UIApplication.sharedApplication().delegate as! AppDelegate).memes.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            tableView.reloadData()
        } 
    }
    
    // Navigating to the Details view
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        performSegueWithIdentifier("viewDetails", sender: UITableViewCell.self)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "viewDetails" {
            let destinationVC = segue.destinationViewController as! DetailsViewController
            let indexPath = tableView.indexPathForSelectedRow
            let selectedRow = indexPath!.row
            destinationVC.meme = memes[selectedRow]
        }
    }
}
