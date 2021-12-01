//
//  Room.swift
//  RoomsApp
//
//  Created by Mohammad Azam on 11/30/21.
//

import Foundation
import CoreData
import AppKit

@objc(Room)
class Room: NSManagedObject {
    
}

extension Room {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Room> {
        return NSFetchRequest<Room>(entityName: "Room")
    }

    @NSManaged public var color: NSColor?
    @NSManaged public var name: String?

}

extension Room : Identifiable {

}
