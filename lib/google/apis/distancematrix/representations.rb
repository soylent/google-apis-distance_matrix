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
    module Distancematrix
      
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
          collection :origin_addresses, as: 'origin_addresses'
          collection :rows, as: 'rows', class: Google::Apis::Distancematrix::Row, decorator: Google::Apis::Distancematrix::Row::Representation
      
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
          property :distance, as: 'distance', class: Google::Apis::Distancematrix::Distance, decorator: Google::Apis::Distancematrix::Distance::Representation
      
          property :duration, as: 'duration', class: Google::Apis::Distancematrix::Duration, decorator: Google::Apis::Distancematrix::Duration::Representation
      
          property :status, as: 'status'
        end
      end
      
      class Row
        # @private
        class Representation < Google::Apis::Core::JsonRepresentation
          collection :elements, as: 'elements', class: Google::Apis::Distancematrix::Element, decorator: Google::Apis::Distancematrix::Element::Representation
      
        end
      end
    end
  end
end
