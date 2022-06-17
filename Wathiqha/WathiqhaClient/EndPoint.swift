//
//  EndPoint.swift
//  Wathiqha
//
//  Created by Khaled Kutbi on 15/08/1443 AH.
//

import Foundation


class EndPoint{
    
    func Url(base:String,apiPath:String) -> String{
        var urlString:String = ""
        if let path = Bundle.main.path(forResource: "WathiqhaApis", ofType: "plist") {
          if let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String, String> {
            if let baseUrl = dict[base] {
                if let apiPath = dict[apiPath]{
                    urlString  = baseUrl + apiPath
                }else{
                    print("Api path not found")
                }
            }else{
                print("base not found")
            }
          }else{
            
          }
        }
        return urlString
    }

}
