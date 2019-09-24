import Alamofire

extension ApiClient {
    static func loginAccountKid(authoriserCode: String,
                          phone: String?,
                          deviceIdentify: String?,
                          success: @escaping ResponseSuccess,
                          fail: @escaping ResponseFailure) -> Request? {
        // create url
        let url = Config.baseUrl + "/api/sandbox/user/login"
        // create params
        var params = ApiClient.defaultParams()
        params["serviceName"] = "AUTH_LOGIN_ACCOUNTKIT"
        params["authoriserCode"] = authoriserCode
        params["phone"] = phone
        params["appType"] = "IOS"
        if let _deviceIdentify = deviceIdentify {
            params["deviceIdentify"] = _deviceIdentify
        } else {
            params["deviceIdentify"] = NSNull()
        }
        params["lang"] = "vi"
        // create headers
        let headers = [HeaderKey.ContentType: HeaderValue.ApplicationJson]
        return sessionWithoutToken.request(url, method: .post, parameters: params,
                                           encoding: JSONEncoding.default, headers: headers)
            .validate()
            .responseJSON { response in
                ApiClient.proccessResponse(success: success, fail: fail, response: response)
        }
    }
}
