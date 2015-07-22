require 'rails_helper'

describe Member do
  it { should validate_presence_of :name }
end
