require 'spec_helper'

describe Organization do
  it { should have_many(:events) }
  it { should have_many(:places).through(:events) }
  it { should have_many(:memberships) }
  it { should have_many(:profiles).through(:memberships) }
end
