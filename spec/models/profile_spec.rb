require 'spec_helper'

describe Profile do
  it { should have_many(:memberships) }
  it { should have_many(:organizations).through(:memberships) }
end
