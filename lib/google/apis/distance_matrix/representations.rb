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
      
      class Distance
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class DistanceMatrixData
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Duration
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Element
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Fare
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Row
        class Representation < Google::Apis::Core::JsonRepresentation; end
      
        include Google::Apis::Core::JsonObjectSupport
      end
      
      class Distance
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class DistanceMatrixData
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :destination_addresses, as: 'destination_addresses'
          property :error_message, as: 'error_message'
          collection :origin_addresses, as: 'origin_addresses'
          collection :rows, as: 'rows', class: Google::Apis::DistanceMatrix::Row, decorator: Google::Apis::DistanceMatrix::Row::Representation
      
          property :status, as: 'status'
        end
      end
      
      class Duration
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class Element
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :distance, as: 'distance', class: Google::Apis::DistanceMatrix::Distance, decorator: Google::Apis::DistanceMatrix::Distance::Representation
      
          property :duration, as: 'duration', class: Google::Apis::DistanceMatrix::Duration, decorator: Google::Apis::DistanceMatrix::Duration::Representation
      
          property :duration_in_traffic, as: 'duration_in_traffic', class: Google::Apis::DistanceMatrix::Duration, decorator: Google::Apis::DistanceMatrix::Duration::Representation
      
          property :fare, as: 'fare', class: Google::Apis::DistanceMatrix::Fare, decorator: Google::Apis::DistanceMatrix::Fare::Representation
      
          property :status, as: 'status'
        end
      end
      
      class Fare
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          property :currency, as: 'currency'
          property :text, as: 'text'
          property :value, as: 'value'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::DistanceMatrix::Element, decorator: Google::Apis::DistanceMatrix::Element::Representation
      
        end
      end
    end
  end
end
