//
//  ViewController.swift
//  Runner
//
//  Created by Martin Przystalka on 14/05/2018.
//  Copyright © 2018 MH. The MIT License (MIT).
//

import UIKit
import Maybach

class ViewController: UIViewController {

    @IBOutlet weak var customNavigationBar: CustomNavigationBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        let apiCall = RegisterApiCall(email: "", password: "")
        let networkManager = NetworkManager()
        networkManager.task(withApiCall: apiCall) { (response) in
            
        }
        
        customNavigationBar.onLeftBarButtonClick = {
            log(LogType.error, self, #function, #line)
        }
        
        customNavigationBar.onRightBarButtonClick = {
            log(LogType.error, self, #function, #line)
        }
    }
}


struct RegisterResponse: Decodable, ApiCallResponse {

}


struct RegisterRequest: Encodable {

}


class RegisterApiCall: ApiCallContainer {
    typealias ApiResponse = RegisterResponse
    let httpBody: RegisterRequest

    init(email: String, password: String) {
        httpBody = RegisterRequest()
    }

    var request: URLRequest {
        do {
            let encoder = JSONEncoder()
            let requestBody = try encoder.encode(httpBody)
            var request = NSMutableURLRequest(url: URL(fileURLWithPath: "")) as URLRequest
            request.httpBody = requestBody
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            request.httpMethod = "post"
            return request
        } catch {
            log("\(error)")
        }
        fatalError("expect to have request at this point")
    }

    func response(data: Data) -> ApiResponse? {
        do {
            let response: RegisterResponse? = try JSONDecoder().decode(RegisterResponse.self, from: data)
            return response
        } catch {
            log(.exception, self, #function, #line)
        }
        return nil
    }
}
