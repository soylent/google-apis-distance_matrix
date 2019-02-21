# frozen_string_literal: true

require 'google/apis/distance_matrix'

RSpec.describe Google::Apis::DistanceMatrix::DistanceMatrixService, :vcr do
  subject(:distance_matrix) { described_class.new }

  before { distance_matrix.key = ENV.fetch('GOOGLE_API_KEY') }

  describe '#distance' do
    let(:origin) { 'Washington, DC, USA' }
    let(:dest) { 'New York, NY, USA' }

    describe 'response' do
      subject(:distance_matrix_data) do
        distance_matrix.distance(origins: origin, destinations: dest)
      end

      it { is_expected.to have_attributes(origin_addresses: [origin]) }
      it { is_expected.to have_attributes(destination_addresses: [dest]) }
      it { is_expected.to have_attributes(status: 'OK') }

      let(:element) { distance_matrix_data.rows.first.elements.first }

      describe 'distance' do
        subject { element.distance }

        it { is_expected.to have_attributes(text: String, value: Integer) }
      end

      describe 'duration' do
        subject { element.duration }

        it { is_expected.to have_attributes(text: String, value: Integer) }
      end
    end
  end
end
