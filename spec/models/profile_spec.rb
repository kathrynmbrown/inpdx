require 'spec_helper'

describe Profile do
  it { should have_many(:memberships) }
  it { should have_many(:organizations).through(:memberships) }
  it { should have_many(:reviews) }
  it { should have_many(:places).through(:reviews) }
  it { should have_many(:rsvps) }
  it { should have_many(:events).through(:rsvps) }
end
