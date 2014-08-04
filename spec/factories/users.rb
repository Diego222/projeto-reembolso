FactoryGirl.define do
	factory :user do
		name'diego'
		email 'diego@example.com'
		password 'p@ssw@rd'
		password_confirmation 'p@ssw@rd'
		admin false
	end
end