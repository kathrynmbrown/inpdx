require 'spec_helper'

describe Organization do
  it { should have_many(:events) }
  it { should have_many(:places).through(:events) }
end
