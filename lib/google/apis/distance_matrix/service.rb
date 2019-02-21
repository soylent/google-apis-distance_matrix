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
    module DistanceMatrix
      # Distance Matrix API
      #
      # Provides travel distance and time for a matrix of origins and destinations,
      #  based on the recommended route between start and end points
      #
      # @example
      #    require 'google/apis/distance_matrix'
      #
      #    DistanceMatrix = Google::Apis::DistanceMatrix # Alias the module
      #    service = DistanceMatrix::DistanceMatrixService.new
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
        # @param [Fixnum] arrival_time
        #   Specifies the desired time of arrival for transit directions
        # @param [String] avoid
        #   Indicates that the calculated route(s) should avoid the indicated features
        # @param [Fixnum] departure_time
        #   Specifies the desired time of departure
        # @param [String] destinations
        #   List of addresses and/or textual latitude/longitude values to which to
        #   calculate distance and time
        # @param [String] language
        #   The language in which to return results
        # @param [String] mode
        #   Specifies the mode of transport to use when calculating directions
        # @param [String] origins
        #   List of addresses and/or textual latitude/longitude values from which to
        #   calculate distance and time
        # @param [String] region
        #   Specifies the prefered region the geocoder should search first, but it will
        #   not restrict the results to only this region. Valid values are a ccTLD code.
        # @param [String] traffic_model
        #   Specifies the assumptions to use when calculating time in traffic
        # @param [String] transit_mode
        #   Specifies one or more preferred modes of transit. This parameter may only be
        #   specified for requests where the mode is transit.
        # @param [String] transit_routing_preference
        #   Specifies preferences for transit requests
        # @param [String] units
        #   Specifies the unit system to use when expressing distance as text
        # @param [Google::Apis::RequestOptions] options
        #   Request-specific options
        #
        # @yield [result, err] Result & error if block supplied
        # @yieldparam result [Google::Apis::DistanceMatrix::DistanceMatrixData] parsed result object
        # @yieldparam err [StandardError] error object if request failed
        #
        # @return [Google::Apis::DistanceMatrix::DistanceMatrixData]
        #
        # @raise [Google::Apis::ServerError] An error occurred on the server and the request can be retried
        # @raise [Google::Apis::ClientError] The request is invalid and should not be retried without modification
        # @raise [Google::Apis::AuthorizationError] Authorization is required
        def distance(arrival_time: nil, avoid: nil, departure_time: nil, destinations: nil, language: nil, mode: nil, origins: nil, region: nil, traffic_model: nil, transit_mode: nil, transit_routing_preference: nil, units: nil, options: nil, &block)
          command =  make_simple_command(:get, 'json', options)
          command.response_representation = Google::Apis::DistanceMatrix::DistanceMatrixData::Representation
          command.response_class = Google::Apis::DistanceMatrix::DistanceMatrixData
          command.query['arrival_time'] = arrival_time unless arrival_time.nil?
          command.query['avoid'] = avoid unless avoid.nil?
          command.query['departure_time'] = departure_time unless departure_time.nil?
          command.query['destinations'] = destinations unless destinations.nil?
          command.query['language'] = language unless language.nil?
          command.query['mode'] = mode unless mode.nil?
          command.query['origins'] = origins unless origins.nil?
          command.query['region'] = region unless region.nil?
          command.query['traffic_model'] = traffic_model unless traffic_model.nil?
          command.query['transit_mode'] = transit_mode unless transit_mode.nil?
          command.query['transit_routing_preference'] = transit_routing_preference unless transit_routing_preference.nil?
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
