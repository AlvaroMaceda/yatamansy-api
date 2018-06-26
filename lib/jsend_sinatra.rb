require 'sinatra/base'
require 'sinatra/json'

module Sinatra
  module JSend
    include Sinatra::JSON

    def jsend_success(data)
      json(status: 'success', data: data)
    end
    alias jsend_ok jsend_success

    def jsend_fail(data)
      jsend_stop(json(status: 'fail', data: data))
    end

    def jsend_error(message, code = nil, data = nil)
      full_message = {status: 'error', message: message, code: code, data: data}
      message_withouth_nils = full_message.keep_if{|_,v| v != nil }
      jsend_stop(json(message_withouth_nils))
    end

    private

    # XXX: probably there is a better way in Sinatra?
    def jsend_stop(ret)
      content_type 'application/json'
      status 200
      ret
      # response.body = ret
      # halt 200 # as far as HTTP is concerned we are successful
    end
  end

  helpers JSend
end