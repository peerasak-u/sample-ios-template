//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//

import Foundation

class ___VARIABLE_serviceWorkerName___: ___VARIABLE_serviceName___ServiceLogic {
    let service: ___VARIABLE_serviceName___ServiceLogic

    init(service: ___VARIABLE_serviceName___ServiceLogic) {
        self.service = service
    }

    func fetchSomething<T>(request: ___VARIABLE_serviceModelName___.FetchSomething.Request) async throws -> T where T: Decodable {
        return try await service.fetchSomething(request: request)
    }
}
