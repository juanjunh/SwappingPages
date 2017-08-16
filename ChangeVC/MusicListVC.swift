//
//  MusicListVC.swift
//  ChangeVC
//
//  Created by JanielHNY on 2017/8/15.
//  Copyright © 2017年 JanielHNY. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = UIColor.purpleColor()
        
    }
    
    
    
    @IBAction func backBtnPressed(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }
    
    @IBAction func playSongBtnPressed(sender: AnyObject) {
        
        let songTitle = "Shake it off"
        
        performSegueWithIdentifier("PlaySongVC", sender: songTitle)
       
    }

   
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destination = segue.destinationViewController as?
            PlaySongVC {
            
            if let song = sender as? String {
                destination.selectedSong = song
            }
            
        }
        
    }
  
    
    

}
