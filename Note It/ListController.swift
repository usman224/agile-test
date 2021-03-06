//
//  ListController.swift
//  Note It
//
//  Created by Usman Hussain on 07/11/2016.
//  Copyright © 2016 Usman Hussain. All rights reserved.
//

import UIKit

class ListController: UITableViewController {
    
    let note = Notes.sharedInstance

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let noteone = Note (title: "Sigma")
        let notetwo = Note (title: "Maths")
        let notethree = Note (title: "Programming")
        let notefour = Note (title: "Settings")
        
        self.note.add(note: noteone)
        self.note.add(note: notetwo)
        self.note.add(note: notethree)
        self.note.add(note: notefour)

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return self.note.notes.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Note", for: indexPath)
        cell.textLabel?.text=self.note.notes[indexPath.row].title

        // Configure the cell...

        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation


   /* override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showNote" {
            print("segue with \(segue.identifier) indentifier triggered")
            if let indexPath = self.tableView.indexPathForSelectedRow{
                print("found row \(indexPath.row)")
                if let navigationController = segue.destination as? UINavigationController{
                    if let noteController = navigationController.topViewController as? NoteController {
                        print("found Note Controller")
                        noteController.noteID = indexPath.row
                        
                    }
                }
                
            }
        }
        
    }*/
    

}
