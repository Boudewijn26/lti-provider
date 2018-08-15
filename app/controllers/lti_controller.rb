require 'oauth/request_proxy/action_controller_request'

class LtiController < ApplicationController
  def check
    provider = IMS::LTI::ToolProvider.new('key', 'secret', request.parameters)
    @valid = provider.valid_request?(request)
  end
end
