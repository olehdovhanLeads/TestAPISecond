//
//  NetworkManager.swift
//  TestAPISecond
//
//  Created by Oleh Dovhan on 03.08.2021.
//

import Foundation

struct NetworkManager {
    
    
    func fetchCurrentData(completion: @escaping (Betting)->()) {
        let urlString = "https://api.the-odds-api.com/v3/odds/?sport=upcoming&region=uk&mkt=h2h&apiKey=567c99f5b7e64ffa3897dd975427a544"
        guard let url = URL(string: urlString) else {return}
        let session = URLSession(configuration: .default)
        let task = session.dataTask(with: url) { data, response, error in
            if let data = data {
                guard let model = self.parseJSON(withData: data) else {return}
                
               completion(model)
            }
        }
        task.resume()
}
    
    func parseJSON(withData data: Data) -> Betting? {
        let decoder = JSONDecoder()
        do {
         let currentBetData = try decoder.decode(Betting.self, from: data)
    
            return currentBetData
            
        } catch let error as NSError {
            print(error.localizedDescription)
        }
       return nil
    }
}
