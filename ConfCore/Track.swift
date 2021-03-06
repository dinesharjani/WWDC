//
//  Track.swift
//  WWDC
//
//  Created by Guilherme Rambo on 06/02/17.
//  Copyright © 2017 Guilherme Rambo. All rights reserved.
//

import Cocoa
import RealmSwift

/// Tracks represent a specific are of interest (ex: "System Frameworks", "Graphics and Games")
public class Track: Object {

    /// Unique identifier
    @objc public dynamic var identifier = ""

    /// The name of the track
    @objc public dynamic var name = ""

    /// The order in which the track should be listed
    @objc public dynamic var order = 0

    /// Dark theme color
    @objc public dynamic var darkColor = ""

    /// Color for light backgrounds
    @objc public dynamic var lightBackgroundColor = ""

    /// Color for light contexts
    @objc public dynamic var lightColor = ""

    /// Theme title color
    @objc public dynamic var titleColor = ""

    /// Sessions related to this track
    public let sessions = List<Session>()

    /// Instances related to this track
    public let instances = List<SessionInstance>()

    public override class func primaryKey() -> String? {
        return "name"
    }

    public static func make(identifier: String,
                            name: String,
                            darkColor: String,
                            lightBackgroundColor: String,
                            lightColor: String,
                            titleColor: String) -> Track {
        let track = Track()

        track.identifier = identifier
        track.name = name
        track.darkColor = darkColor
        track.lightBackgroundColor = lightBackgroundColor
        track.lightColor = lightColor
        track.titleColor = titleColor

        return track
    }

}
