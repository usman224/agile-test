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

    
    
    
    public func add(note: Note)throws{
        self.notes.append(note)
        }
    
    
    
    
    public func getNote(atIndex index: Int)throws -> Note {
        if (index < 0) || (index > (self.notes.count - 1)){
            throw NoteError.outOfRange(index: index)
        }
        return(Note(title:"Hello", text: "world"))
    }
    
    
    public var count: Int {
        get{
            return self.notes.count
        }
    }
    
    
    public func clearList(){
        self.notes.removeAll()
    }
    
    
    public func insert(note:Note, at index: Int) throws {
        if (index < 0) || (index > (self.notes.count - 1)){
            throw   NoteError.outOfRange(index: index)
        }
        self.notes.insert(note, at: index)

    }
    
    
    public func update(note: Note, at index: Int) throws{
        //needs implementing
    }
    
    public func remove(at index: Int) throws{
        if (index < 0) || (index > (self.notes.count - 1)){
            throw NoteError.outOfRange(index: index)
        }
        self.notes.remove(at: index)
    }
    
    
}
    
    


