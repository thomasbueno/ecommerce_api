module Storefront
  module V1
    class ApiController < ApplicationController
      include Authenticable
    end
  end
end