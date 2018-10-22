//
//  Constant.swift
//  AsynAPICAll
//
//  Created by CSS on 22/10/18.
//  Copyright © 2018 CSS. All rights reserved.
//

import Foundation

struct BaseUrl {
    static let shared = BaseUrl()
    
    let url = "https://api.myjson.com"
    
}

struct Url_Methods {
    static let shared = Url_Methods()
    
    let noticeList = "/bins/1bsqcn"
    let movieList = "/bins/1h87n6"
    
    
}
