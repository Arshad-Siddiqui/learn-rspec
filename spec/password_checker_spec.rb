require 'password_checker'

RSpec.describe PasswordChecker do
  context 'Password less than 8 characters long' do
    it 'Fails' do
      password_checker = PasswordChecker.new
      expect { password_checker.check('salami') }.to raise_error "Invalid password, must be 8+ characters."
    end
  end

  context 'Password is longer than 8 characters long' do
    it 'returns true' do
      password_checker = PasswordChecker.new
      result = password_checker.check('Some string longer than salami')
      expect(result).to eq true
    end
  end
end