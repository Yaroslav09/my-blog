require 'rails_helper'

describe User, type: :model do
  
  context 'relations' do
    it { is_expected.to have_many(:posts) }
    it { is_expected.to have_many(:posts).dependent(:destroy) }
    
  end

  context 'validations' do
    it { should validate_presence_of(:first_name) }    
    it { should validate_presence_of(:last_name) }

    it { should validate_presence_of(:user_name) }    
    it { should validate_uniqueness_of(:user_name).case_insensitive }
  end
  
end