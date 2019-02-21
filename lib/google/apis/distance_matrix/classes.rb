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

require 'date'
require 'google/apis/core/base_service'
require 'google/apis/core/json_representation'
require 'google/apis/core/hashable'
require 'google/apis/errors'

module Google
  module Apis
    module DistanceMatrix
      
      # Distance between two points
      class Distance
        include Google::Apis::Core::Hashable
      
        # Rounded human-readable distance in an appropriate unit for the request
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Distance in meters
        # Corresponds to the JSON property `value`
        # @return []
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Distance matrix data
      class DistanceMatrixData
        include Google::Apis::Core::Hashable
      
        # Array of addresses as returned by the API from your original request
        # Corresponds to the JSON property `destination_addresses`
        # @return [Array<String>]
        attr_accessor :destination_addresses
      
        # Array of addresses as returned by the API from your original request
        # Corresponds to the JSON property `origin_addresses`
        # @return [Array<String>]
        attr_accessor :origin_addresses
      
        # Array of elements
        # Corresponds to the JSON property `rows`
        # @return [Array<Google::Apis::DistanceMatrix::Row>]
        attr_accessor :rows
      
        # Response status
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @destination_addresses = args[:destination_addresses] if args.key?(:destination_addresses)
          @origin_addresses = args[:origin_addresses] if args.key?(:origin_addresses)
          @rows = args[:rows] if args.key?(:rows)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # Duration
      class Duration
        include Google::Apis::Core::Hashable
      
        # Human-readable representation of the duration
        # Corresponds to the JSON property `text`
        # @return [String]
        attr_accessor :text
      
        # Duration in seconds
        # Corresponds to the JSON property `value`
        # @return []
        attr_accessor :value
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @text = args[:text] if args.key?(:text)
          @value = args[:value] if args.key?(:value)
        end
      end
      
      # Travel distance and time for a pair of origin and destination
      class Element
        include Google::Apis::Core::Hashable
      
        # Distance between two points
        # Corresponds to the JSON property `distance`
        # @return [Google::Apis::DistanceMatrix::Distance]
        attr_accessor :distance
      
        # Duration
        # Corresponds to the JSON property `duration`
        # @return [Google::Apis::DistanceMatrix::Duration]
        attr_accessor :duration
      
        # Status
        # Corresponds to the JSON property `status`
        # @return [String]
        attr_accessor :status
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @distance = args[:distance] if args.key?(:distance)
          @duration = args[:duration] if args.key?(:duration)
          @status = args[:status] if args.key?(:status)
        end
      end
      
      # 
      class Row
        include Google::Apis::Core::Hashable
      
        # 
        # Corresponds to the JSON property `elements`
        # @return [Array<Google::Apis::DistanceMatrix::Element>]
        attr_accessor :elements
      
        def initialize(**args)
           update!(**args)
        end
      
        # Update properties of this object
        def update!(**args)
          @elements = args[:elements] if args.key?(:elements)
        end
      end
    end
  end
end
