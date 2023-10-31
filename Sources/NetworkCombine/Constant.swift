//
//  Constant.swift
//  KOSIGN_LMS
//
//  Created by lymanny on 16/3/22.
//

import Foundation

typealias Completion                = ()                -> Void

public enum HTTPMethod : String {
    case GET    = "GET"
    case POST   = "POST"
    case PUT    = "PUT"
    case PATCH  = "PATCH"
    case DELETE = "DELETE"
}

public enum ContentType {
    case Json
    case FormData
}

public enum UploadResponse {
    case progress(percentage: Double)
    case response(data: Data?)
}

public enum XAppVersion : String {
    case base = "20210705"
    
}

public enum NetworkError: Error {
    case invalidURL
    case responseError
    case decoding
    case unknown
    case invalidServerResponse
}

extension NetworkError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("Invalid URL", comment: "Invalid URL")
        case .responseError:
            return NSLocalizedString("Unexpected status code", comment: "Invalid response")
        case .decoding:
            return NSLocalizedString("Error Decoding", comment: "Invalid mapping data")
        case .unknown:
            return NSLocalizedString("Unknown error", comment: "Unknown error")
        case .invalidServerResponse:
            return NSLocalizedString("Unknown error", comment: "Unknown error")
        }
    }
}

public enum UserDefaultKey : String {
    case appLang            = "appLang"
}
public enum NotifyKey : String {
    case reloadLocalize                     = "reloadLocalize"
    
}

public enum APIKey: String {

    public static var baseURL  : String = "https://kosignstore.wecambodia.com:8080/kosignstore_v4"

    public static var mgURL    :  String = "https://mg.kosign.dev/api/v2/app/setting"

//  static var mgURL    :  String = "https://mg.kosign.dev/api/v2/app/setting/866fb6ff-877a-4cdc-bfb5-7619e194cbd4?os=iOS"

//    #if DEBUG
//    case mg                         = "/api/v2/app/setting/9178a6ee-e434-4969-afcf-f161788348c4?os="
//    #else
//    case mg                         = "/api/v2/app/setting/9178a6ee-e434-4969-afcf-f161788348c4?os="
//    #endif

    case listPublicApp                          =   "/list-public-app"
    case listPrivateApp                         =   "/list-private-app"
    case listPublicAppVersion                   =   "/list-public-app-version"
    case listPrivateAppVersion                  =   "/list-private-app-version"
    case login                                  =   "/login"
    case sendEmail                              =   "/send-email"
    case forgotPassword                         =   "/forget-password"
    case changePassword                         =   "/change-password"
    case deleteAccount                          =   "/delete-user"
    case mg                                     =   ""
    case upload                                 =   "/upload"
    case bizplayImage                           =   "https://kosignstore.wecambodia.com/storage/image/c496271a-979c-4475-b89a-214e61d7a220.png"
}

