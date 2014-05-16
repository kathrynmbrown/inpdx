require 'spec_helper'

describe Review do
  it { should belong_to(:place) }
  it { should belong_to(:profile) }
end
