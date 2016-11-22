//
//  NoteController.swift
//  Note It
//
//  Created by Usman Hussain on 07/11/2016.
//  Copyright © 2016 Usman Hussain. All rights reserved.
//

import UIKit

class NoteController: UIViewController {
    
    public var noteID:Int?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let id:Int = self.noteID{
            print("view did load with note \(id)")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
