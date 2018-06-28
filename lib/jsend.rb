# frozen_string_literal: true


# Implements JSend
# http://labs.omniti.com/labs/jsend

require 'json'

module JSend

  SUCCESS = 'success'
  ERROR = 'error'
  FAIL = 'fail'

  def self.parse(json)
    values = JSON.parse(json)
    Response.for(values['status'], values['data'], values['message'], values['code'])
  end

  def self.success(data)
    JSend::SucessResponse.new(data)
  end

  def self.fail(error_data)
    JSend::FailResponse.new(error_data)
  end

  def self.error(msg, code = nil, data = nil)
    JSend::ErrorResponse.new(data, msg, code)
  end

  class Response

    def self.for(type, data = nil, message = nil, code = nil)
      case type
      when JSend::SUCCESS
        SucessResponse.new(data)
      when JSend::ERROR
        ErrorResponse.new(data, message, code)
      when JSend::FAIL
        FailResponse.new(data)
      else
        raise 'Unsupported type of message'
      end
    end

    def to_json
      data = {status: @status, message: @message, code: @code, data: @data}
      relevant_data = data.keep_if { |_, v| !v.nil? }
      relevant_data.to_json
    end

    def success?
      @status == JSend::SUCCESS
    end

    def fail?
      @status == JSend::FAIL
    end

    def error?
     @status == JSend::ERROR
    end

  end

  private

  class SucessResponse < Response

    attr_reader :data

    def initialize(data)
      @status = JSend::SUCCESS
      @data = data
    end

  end

  class FailResponse < Response

    attr_reader :data

    def initialize(data)
      @status = JSend::FAIL
      @data = data
    end

  end

  class ErrorResponse < Response

    attr_reader :data, :message, :code

    def initialize(data = nil, msg = nil, code = nil)
      @status = JSend::ERROR
      @data = data
      @message = msg
      @code = code
    end

  end



end