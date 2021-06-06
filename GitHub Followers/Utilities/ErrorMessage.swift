//
//  ErrorMessage.swift
//  GitHub Followers
//
//  Created by Michael Doctor on 2021-06-06.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to complete your request. Please check your internet connection"
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data receieved from the server was invalid. Please try again."
}
