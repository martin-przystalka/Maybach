//
//  ApiCallContainer.swift
//  Maybach
//
//  Created by martin.przystalka on 08/05/2019.
//  Copyright © 2019 MH. The MIT License (MIT).
//

import Foundation

///A template for response model.
public protocol ApiCallResponse {}

///Container for api request. Contain request creation logic and response conversion.
public protocol ApiCallContainer {
    associatedtype ApiResponse: ApiCallResponse

    ///Create specified request.
    var request: URLRequest { get }
    ///Convert response to desired object.
    func response(data: Data) -> ApiResponse?
}
