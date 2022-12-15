//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Alamofire
import Foundation

class ___VARIABLE_remoteServiceName___: ___VARIABLE_serviceName___ServiceLogic {
    func fetchSomething<T>(request: ___VARIABLE_serviceModelName___.FetchSomething.Request) async throws -> T where T: Decodable {
        let router = ___VARIABLE_serviceRouterName___.fetchSomething(request: request)
    }
}
