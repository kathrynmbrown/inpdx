require 'spec_helper'

describe Event do
  it { should validate_presence_of(:name) }
  it { should belong_to(:organization) }
  it { should belong_to(:place) }
end
