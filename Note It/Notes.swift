//
//  Notes.swift
//  Note It
//
//  Created by Usman Hussain on 17/10/2016.
//  Copyright © 2016 Usman Hussain. All rights reserved.
//

import Foundation

struct Note {
    var title: String
    var text: String
}

class Notes {
    var notes:[Note]
    
    init() {
        self.notes = []
    }
    
    
    public func add(note: Note){
        notes.add(note: Note(title: "1st note", text: "details"))
        
    }
    
    public func getNote(atIndex index: Int)throws -> Note {
        // needs implementing
        return(Note(title:"Hello", text: "world"))
    }
}
    
    


