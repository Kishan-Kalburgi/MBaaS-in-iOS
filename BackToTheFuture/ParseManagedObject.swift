//
//  ParseManagedObject.swift
//  BackToTheFuture
//
//  Created by Kalburgi Srinivas,Kishan on 3/27/18.
//  Copyright © 2018 Kalburgi Srinivas,Kishan. All rights reserved.
//

import Foundation
import Parse

class Movie:PFObject, PFSubclassing {
    @NSManaged var title:String
    @NSManaged var year:Int
    @NSManaged var producer:String
    static func parseClassName() -> String {
        return "Movie"
    }
    
}

class Actor : PFObject, PFSubclassing {
    @NSManaged var name : String
    @NSManaged var starIn : [Movie]
    
    static func parseClassName() -> String {
        return "Actor"
    }
}
