require 'spec_helper'

describe Company do
  it { should have_many(:events) }
  it { should have_many(:organizations).through(:events) }
  it { should have_many(:reviews) }
  it { should have_many(:profiles).through(:reviews) }
end
