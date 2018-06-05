//
//  Earthquake.swift
//  Earthquake
//
//  Created by nguyendinhphu on 6/4/18.
//  Copyright © 2018 nguyendinhphu. All rights reserved.
//

import UIKit

typealias DICT = Dictionary<AnyHashable,Any>


class Feature {
    var mag : Double
    var place : String
    var time : TimeInterval
    var updated : TimeInterval
    var tz : Int
    var url : String
    var detail : String
    var felt : Int
    var cdi : Double
    var status : String
    var tsunami : Int
    var sig : Int
    var ids : String
    var types : String
    var dmin : Double
    var rms : Double
    var title : String
    
    init?(dict : DICT) {
        guard let properties = dict["properties"] as? DICT else { return nil }
        guard let mag = properties["mag"] as? Double else { return nil }
        guard let place = properties["place"] as? String else { return nil }
        guard let time = properties["time"] as? TimeInterval else { return nil }
        guard let updated = properties["updated"] as? TimeInterval else { return nil }
        guard let tz = properties["tz"] as? Int else { return nil }
        guard let url = properties["url"] as? String else { return nil }
        guard let detail = properties["detail"] as? String else { return nil }
        guard let felt = properties["felt"] as? Int else { return nil }
        guard let cdi = properties["cdi"] as? Double else { return nil }
        guard let status = properties["status"] as? String else { return nil }
        guard let tsunami = properties["tsunami"] as? Int else { return nil }
        guard let sig = properties["sig"] as? Int else { return nil }
        guard let ids = properties["ids"] as? String else { return nil }
        guard let types = properties["types"] as? String else { return nil }
        guard let dmin = properties["dmin"] as? Double else { return nil }
        guard let rms = properties["rms"] as? Double else { return nil }
        guard let title = properties["title"] as? String else { return nil }
        
        self.mag = mag
        self.place = place
        self.time = time
        self.updated = updated
        self.tz = tz
        self.url = url
        self.detail = detail
        self.felt = felt
        self.cdi = cdi
        self.status = status
        self.tsunami = tsunami
        self.sig = sig
        self.ids = ids
        self.types = types
        self.dmin = dmin
        self.rms = rms
        self.title = title
    }
}
