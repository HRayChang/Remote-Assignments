//
//  ViewController.swift
//  ANewApp
//
//  Created by Ray Chang on 2023/9/23.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var stationID: UILabel!
    @IBOutlet weak var stationName: UILabel!
    @IBOutlet weak var stationAddress: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getStationData()
    }
    
    func getStationData() {
        let url = URL(string: "https://remote-assignment.s3.ap-northeast-1.amazonaws.com/station")!
        URLSession.shared.dataTask(with: url) {
            
            (data, response, error) in
            
            guard let httpResponse = response as? HTTPURLResponse,
                  httpResponse.statusCode == 200 else {
                return
            }
            
            guard let data = data else {
                print(error.debugDescription)
                return
            }
            
            do {
                let station = try JSONDecoder().decode(Station.self, from: data)
                
                DispatchQueue.main.async {
                    self.stationID.text = station.stationID
                    self.stationName.text = station.stationName
                    self.stationAddress.text = station.stationAddress
                }
            } catch {
                print(error)
            }
        }
        .resume()
    }
}
    

