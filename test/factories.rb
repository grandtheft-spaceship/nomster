FactoryGirl.define do 

	factory :user do
		email "testtesttest@gmail.com"
		password "testing123"
		password_confirmation "testing123"
	end

	factory :place do 
		name "Testville"
		description "test"
		address "123 Sesame St, Smallsville, CA 90000"

		association :user
	end

	factory :comment do
		message "This is a test"
		rating "1_star"

		association :user
		association :place
	end
end