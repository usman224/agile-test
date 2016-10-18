//
//  Notes.swift
//  Note It
//
//  Created by Usman Hussain on 17/10/2016.
//  Copyright © 2016 Usman Hussain. All rights reserved.
//

import Foundation

enum NoteError: Error {
    case outOfRange(index:Int)
}



struct Note {
    var title: String
    var text: String
}

class Notes {
    var notes:[Note]
    
    private init() {
        self.notes = []
    }
    
    public static let sharedInstance = Notes()

    
    
    
    public func add(note: Note){
        let notes = Notes.sharedInstance
        notes.add(note: Note(title: "Note One", text: "Details of note one"))
    }
    
    
    
    
    public func getNote(atIndex index: Int)throws -> Note {
        // needs implementing
        return(Note(title:"Hello", text: "world"))
    }
    
    public var count: Int {
        get{
            //implement
            return 0
        }
    }
    
    
    public func clearList(){
        //implement
    }
    
    
    public func insert(note:Note, at index: Int) throws {
        //needs implementing
    }
    
    
    public func update(note: Note, at index: Int) throws{
        //needs implementing
    }
    
    public func remove(at index: Int) throws{
        //needs implementing
    }
    
    
    
    
    
}
    
    


