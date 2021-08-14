require 'rails_helper'

describe User, type: :model do
  
  context 'relations' do    
    it { is_expected.to have_many(:posts).dependent(:destroy) }    
  end

  context 'validations' do
    [:first_name, :last_name, :user_name].each do |field|
      it { is_expected.to validate_presence_of(field) }    
    end    

    it { is_expected.to validate_uniqueness_of(:user_name).case_insensitive }
  end
  
end