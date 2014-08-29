require 'spec_helper'


describe GHStatus::Status do 
  
  it 'gets the current status' do
    VCR.use_cassette('current_status') do
      last_status = described_class.current
      expect(last_status).to be_kind_of GHStatus::Status
      expect(last_status.status).to eq "good"
      expect(last_status.updated_on).to be_kind_of Date
    end
  end

end