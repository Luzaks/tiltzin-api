require 'rails_helper'

RSpec.describe Trip, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:destiny) }
  it { should validate_presence_of(:date) }
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:destiny_id) }
end
