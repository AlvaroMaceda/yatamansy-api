# frozen_string_literal: true


# Implements JSend
# http://labs.omniti.com/labs/jsend

# We COULD refactor this using three different response classes
# but I've decided not to do it

require 'json'

module JSend

  SUCCESS = 'success'
  ERROR = 'error'
  FAIL = 'fail'

  def self.parse(json)
    foo = JSON.parse(json)
    JSend::Response.new(foo['status'], foo['data'], foo['message'], foo['code'])
  end

  def self.success(data)
    JSend::Response.new(SUCCESS, data)
  end

  def self.fail(error_data)
    JSend::Response.new(FAIL, error_data)
  end

  def self.error(msg, code = nil, data = nil)
    JSend::Response.new(ERROR, data, msg, code)
  end

  class Response

    attr_reader :data, :message, :code

    def initialize(status, data = nil, msg = nil, code = nil)
      @status = status
      @data = data
      @message = msg
      @code = code
    end

    def to_json
      data = {status: @status, message: @message, code: @code, data: @data}
      relevant_data = data.keep_if { |_, v| !v.nil? }
      relevant_data.to_json
    end

    def success?
      @status == SUCCESS;
    end

    def fail?
      @status == FAIL
    end

    def error?
      @status == ERROR;
    end

  end

end