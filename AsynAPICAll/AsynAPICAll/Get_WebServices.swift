//
//  Get_WebServices.swift
//  AsynAPICAll
//
//  Created by CSS on 22/10/18.
//  Copyright © 2018 CSS. All rights reserved.
//

import Foundation

class Get_WebServices {
    
    
    static func getMethod(url_method: String, completionHandle: @escaping (Any) -> Void ){
        let url_str = URL(string: BaseUrl.shared.url + url_method) //str_Api_Notice
        let task = URLSession.shared.dataTask(with: url_str!) { (data, response, error) in
            guard error == nil else{
                completionHandle(error?.localizedDescription ?? "???")
                return
            }
            
            guard let content = data else{
                completionHandle("empty data")
                return
            }
            
            guard let json = (try? JSONSerialization.jsonObject(with: content, options: JSONSerialization.ReadingOptions.mutableContainers)) as? Dictionary<String, Any> else{
                completionHandle("serialization Error")
                return
            }
            
            completionHandle(json)
            
            
        }
        task.resume()
    }
}
