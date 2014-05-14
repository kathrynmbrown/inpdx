require 'spec_helper'

describe Place do
  it { should have_many(:events) }
  it { should have_many(:organizations).through(:events) }
end
