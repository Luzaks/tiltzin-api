require 'rails_helper'

RSpec.describe Destiny, type: :model do
  it { should have_many(:trips) }
  it { should validate_presence_of(:url) }
  it { should validate_presence_of(:city) }
  it { should validate_presence_of(:family) }
  it { should validate_presence_of(:description) }
  it { should validate_presence_of(:state) }
  it { should validate_presence_of(:famdescription) }
end
