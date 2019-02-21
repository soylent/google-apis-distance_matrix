# Copyright 2015 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module Distancematrix
      # Distance Matrix API
      #
      # Provides travel distance and time for a matrix of origins and destinations,
      #  based on the recommended route between start and end points
      #
      # @example
      #    require 'google/apis/distancematrix'
      #
      #    Distancematrix = Google::Apis::Distancematrix # Alias the module
      #    service = Distancematrix::DistanceMatrixService.new
      #
      # @see https://developers.google.com/maps/documentation/distance-matrix/start
      class DistanceMatrixService < Google::Apis::Core::BaseService
        # @return [String]
        #  API key
        attr_accessor :key

        def initialize
          super('https://maps.googleapis.com/maps/api/distancematrix/', '')
          @batch_path = ''
        end
        
        # Requests the distance matrix data
        # @param [String] destinations
        #   List of addresses and/or textual latitude/longitude values to which to
        #   calculate distance and time
        # @param [String] origins
        #   List of addresses and/or textual latitude/longitude values from which to
        #   calculate distance and time
        # @param [String] units
        #   Specifies the unit system to use when expressing distance as text
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::Distancematrix::DistanceMatrixData] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::Distancematrix::DistanceMatrixData]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def distance(destinations: nil, origins: nil, units: nil, options: nil, &block)
          command =  make_simple_command(:get, 'json', options)
          command.response_representation = Google::Apis::Distancematrix::DistanceMatrixData::Representation
          command.response_class = Google::Apis::Distancematrix::DistanceMatrixData
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['origins'] = origins unless origins.nil?
          command.query['units'] = units unless units.nil?
          execute_or_queue_command(command, &block)
        end

        protected

        def apply_command_defaults(command)
          command.query['key'] = key unless key.nil?
        end
      end
    end
  end
end
