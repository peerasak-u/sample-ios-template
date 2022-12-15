//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Alamofire
import Foundation

protocol ___VARIABLE_serviceName___ServiceLogic {
    func fetchSomething<T>(request: ___VARIABLE_serviceModelName___.FetchSomething.Request) async throws -> T where T: Decodable
}

enum ___VARIABLE_serviceRouterName___: NetworkRouterProtocol {
    case fetchSomething(request: ___VARIABLE_serviceModelName___.FetchSomething.Request)

    var domain: String {
        return "https://api.example.com"
    }

    var path: String {
        switch self {
        case .fetchSomething:
            return ""
        }
    }

    var method: Alamofire.HTTPMethod {
        switch self {
        case .fetchSomething:
            return .get
        }
    }

    var headers: [String: String]? {
        return nil
    }

    var parameters: [String: String]? {
        return nil
    }

    var body: Data? {
        return nil
    }

    func asURLRequest() throws -> URLRequest {
        guard let url = URL(string: domain + path) else { throw RouterError.urlError }
        let encoding: ParameterEncoding = (method == .get) ? URLEncoding.default : JSONEncoding.default
        var request = URLRequest(url: url)

        request.httpMethod = method.rawValue
        request.httpBody = body

        headers?.forEach {
            request.addValue($0.value,
                             forHTTPHeaderField: $0.key)
        }

        return try encoding.encode(request,
                                   with: parameters)
    }
}
