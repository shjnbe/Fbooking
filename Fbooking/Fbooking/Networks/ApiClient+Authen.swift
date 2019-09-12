import Alamofire

extension ApiClient {
    static func loginWith(email: String,
                          password: String,
                          success: @escaping ResponseSuccess,
                          fail: @escaping ResponseFailure) -> Request? {
        // create url
        let url = Config.baseUrl + "/api/sandbox/user/login"
        // create params
        var params = ApiClient.defaultParams()
        params["username"] = email
        params["password"] = password
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
