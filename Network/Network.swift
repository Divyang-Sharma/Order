//
//  Network.swift
//  Order
//
//  Created by cloud on 19/01/22.
//

import UIKit

class Network: NSObject {
    func getPostFrom(serverurl:String, completionHandler :@escaping ([PostModel])->() )
    {
        URLSession.shared.dataTask(with:URL(string: serverurl)!){(data,response,error) in
            if let _=error{
                print("unable to feetch data")
                return
            }
            do{
           
                let objPostList=try JSONDecoder.init().decode([PostModel].self, from:data!)
                print(objPostList)
                completionHandler(objPostList)
            }catch{
                print("Exception : \(error)")
            }
        }.resume()
        
    }
}
