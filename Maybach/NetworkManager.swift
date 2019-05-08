//
//  NetworkManager.swift
//  Maybach
//
//  Created by martin.przystalka on 08/05/2019.
//  Copyright © 2019 MH. The MIT License (MIT).
//

import Foundation

///Simple manager for making
public class NetworkManager {
    private let session = URLSession.shared
    private var task: URLSessionDataTask?
    ///Current state of task.
    public var isMakingRequest: Bool { return task?.state == .running }

    public init() { }

    /**
     Make a request for passed ApiCallContainer.
     - Parameters:
     - withApiCall: Class which inherits from ApiCallContainer.
     - completion: Response from api.

     - Returns: Response mapped for ApiResponse.
     */
    public func task<T: ApiCallContainer>(withApiCall request: T,
                                   _ completion: @escaping ((_ response: T.ApiResponse?) -> Void)) {
        let requestURL = request.request
        task = session.dataTask(with: requestURL) { (data, _, error) in
            if error != nil { completion(nil); return }
            guard let data = data else { completion(nil); return }
            let response = request.response(data: data)
            completion(response)
        }
        task?.resume()
    }
}
