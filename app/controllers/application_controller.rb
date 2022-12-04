class ApplicationController < ActionController::API
    def encode_token(payload)
        JWT.encode(payload, 'my_s3cr3t')
    end

    def headers
        request.headers['Authorization']
    end

    def decode_token
        if headers
            accessToken = headers.split(' ')[1]
            begin
                JWT.decode(accessToken, 'my_s3cr3t', true, algorithm: 'HS256')
            rescue JWT::DecodeError
                nil
            end
        end
    end
end
