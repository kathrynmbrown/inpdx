require 'spec_helper'

describe Rsvp do
  it { should belong_to(:event) }
  it { should belong_to(:profile) }
end
