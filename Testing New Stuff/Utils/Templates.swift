////
////  Templates.swift
////  Medical-Platform
////
////  Created by Firas El Mohtar on 13/04/2023.
////
//
//import Foundation
//import Combine
//import SwiftUI
//
//func makeNetworkRequest<T: Decodable>(
//    url: URL,
//    httpMethod: String = "GET",
//    data: Data? = nil,
//    isLoading: Published<Bool>.Publisher?,
//    apiError: Published<Error>.Publisher?
//) -> AnyPublisher<T, Error> {
//    var request = URLRequest(url: url)
//    request.httpMethod = httpMethod
//    request.httpBody = data
//    
//    let isLoadingBinding = Binding(get: { isLoading?.wrappedValue }, set: { isLoading?.wrappedValue = $0 })
//    isLoadingBinding.wrappedValue = true // Set isLoading to true when the request is started
//    
//    return URLSession.shared.dataTaskPublisher(for: request)
//        .tryMap { data, response in
//            guard let httpResponse = response as? HTTPURLResponse,
//                  (200...299).contains(httpResponse.statusCode) else {
//                throw URLError(.badServerResponse)
//            }
//            return data
//        }
//        .decode(type: T.self, decoder: JSONDecoder())
//        .handleEvents(receiveCompletion: { completion in
//            isLoadingBinding.wrappedValue = false // Set isLoading to false when the request completes
//            switch completion {
//            case .failure(let error):
//                apiError?.send(error) // Send the error to the apiError publisher if there is an error
//            case .finished:
//                break
//            }
//        })
//        .eraseToAnyPublisher()
//}
