//
//  MockAPIClient.swift
//  
//
//  Created by Fernando Torcelly Garcia on 18/10/22.
//

@testable import Fanart
import XCTest

final class MockAPIClient: APIClient {

    static var apiKey: String?

    var result: Result<Any, FanartError>?
    var requestTime: UInt64 = 0
    private(set) var lastPath: URL?
    private(set) var getCount = 0

    static func setAPIKey(_ apiKey: String) {
        Self.apiKey = apiKey
    }

    func get<Response: Decodable>(path: URL) async throws -> Response {
        self.lastPath = path
        self.getCount += 1

        if requestTime > 0 {
            try await Task.sleep(nanoseconds: requestTime * 1_000_000_000)
        }

        guard let result = result else {
            throw FanartError.unknown
        }

        do {
            guard let value = try result.get() as? Response else {
                XCTFail("Can't cast response to type \(String(describing: Response.self))")
                throw FanartError.unknown
            }

            return value
        } catch let error as FanartError {
            throw error
        } catch {
            throw FanartError.unknown
        }
    }

    func reset() {
        result = nil
        lastPath = nil
        getCount = 0
    }

}

