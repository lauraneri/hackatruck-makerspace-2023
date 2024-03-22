//
//  Quote.swift
//  AnimeQuotes
//
//  Created by Student13 on 15/03/23.
//

import Foundation

struct Quote: Codable, Hashable {
    let anime: String?
    let character: String?
    let quote: String
}

class ViewModel : ObservableObject {
    @Published var q = Quote(anime: "", character: "", quote: "")
    
    func fetch(){
        guard let url = URL(string: "https://animechan.vercel.app/api/random") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode(Quote.self, from: data)
                
                DispatchQueue.main.async{
                    self?.q = parsed
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
    
    
    
}
