require 'spec_helper'

describe Membership do
  it { should belong_to(:organization) }
  it { should belong_to(:profile) }
end
