//
//  Imagem.swift
//  petcaofome
//
//  Created by Student13 on 29/03/23.
//

import Foundation

struct Imagem: Codable, Hashable{
    let image_link: String
}

class ViewModelCamera : ObservableObject {
    @Published var img = Imagem(image_link: "")
    
    func fetch(){
        guard let url = URL(string: "http://192.168.128.243:1880/imgcloudant") else{
            return
        }
        
        let task = URLSession.shared.dataTask(with: url){[weak self] data, _, error in
            
            guard let data = data, error == nil else{
                return
            }
            
            do {
                let parsed = try JSONDecoder().decode([Imagem].self, from: data)
                
                DispatchQueue.main.async{
                    self?.img = parsed[0]
                }
            }catch{
                print(error)
            }
        }
        
        task.resume()
    }
}
