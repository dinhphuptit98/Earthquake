//
//  DataService.swift
//  Earthquake
//
//  Created by nguyendinhphu on 6/4/18.
//  Copyright © 2018 nguyendinhphu. All rights reserved.
//

import UIKit

class DataService {
    static let shared: DataService = DataService()
   
    func getDataEarth(complete: @escaping ([Feature])->Void) {
        var features: [Feature] = []
        let urlString = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/4.5_week.geojson"
        let url = URL(string : urlString)!
        
        let urlRequest = URLRequest(url: url)
        DispatchQueue.global().async {
            let task = URLSession.shared.dataTask(with: urlRequest, completionHandler: { (data, response, error) in
                guard error == nil else {
                    print(error!.localizedDescription)
                    return
                }
                guard let aData = data else { return}
                
                do {
                    guard let result = try JSONSerialization.jsonObject(with: aData, options: .mutableContainers) as? DICT else { return }
                    guard let featuresObj = result["features"] as? [DICT] else { return }
                    for featureObj in featuresObj {
                        if let feature = Feature(dict: featureObj) {
                            features.append(feature)
                        }
                    }
                    DispatchQueue.main.async {
                        complete(features)                        
                    }
                }
                catch {
                    print(error.localizedDescription)
                }
            })
            task.resume()
        }
    }
}
