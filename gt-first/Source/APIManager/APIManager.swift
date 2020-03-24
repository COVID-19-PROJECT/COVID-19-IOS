//
//  APIManager.swift
//  gt-first
//
//  Created by Erick Pac on 3/22/20.
//  Copyright © 2020 Erick Pac. All rights reserved.
//

import Alamofire

class APIManager {
    
    static let shared: APIManager = APIManager()
    
    func performRequest<T: Codable>(to endpoint: String,
                        method: HTTPMethod = .get,
                        parameters: Parameters? = nil,
                        encoding: ParameterEncoding = URLEncoding.default,
                        encoder: ParameterEncoder = URLEncodedFormParameterEncoder.default,
                        headers: HTTPHeaders? = nil,
                        interceptor: RequestInterceptor? = nil,
                        success: @escaping (T?) -> Void,
                        failure: @escaping (Error?) -> Void) {
        
        guard let url = URL(string: endpoint) else {
            failure(nil)
            return
        }
        
        AF.request(url, method: method, parameters: parameters, encoding: encoding, headers: headers, interceptor: interceptor)
            .validate()
            .responseDecodable { (response: DataResponse<T, AFError>) in
                if let _ = response.error {
                    failure(response.error)
                }
                
                if let _ = response.value {
                    success(response.value)
                }
        }
    }
    
}
