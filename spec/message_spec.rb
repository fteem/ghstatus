require 'spec_helper'

describe GST::Message do
  it 'gets the last status' do
    VCR.use_cassette('last_status') do
      last_status = described_class.last
      expect(last_status).to be_kind_of GST::Message
      expect(last_status.body).to eq "Everything operating normally."
      expect(last_status.status).to eq "good"
      expect(last_status.created_on).to be_kind_of Date
    end
  end

  it 'gets the recent statuses' do
    VCR.use_cassette('last_statuses') do
      last_statuses = described_class.recent
      expect(last_statuses).to be_kind_of Array
      expect(last_statuses.first).to be_kind_of GST::Message
      expect(last_statuses.first.body).to eq "Everything operating normally."
      expect(last_statuses.first.status).to eq "good"
      expect(last_statuses.first.created_on).to be_kind_of Date
    end
  end
end