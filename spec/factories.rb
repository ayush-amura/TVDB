FactoryGirl.define do
  
  # This will use the User class (Admin would have been guessed)
  factory :user do
    name 'ayush'
    age 22
    contact_no 1231231231
    type User::Viewer
    email 'bhavya@gmail.com'
    password 'bhavyajani'
  end

  
  factory :actor do
    name 'a'
    age 22
    rating 9
    false
  end

end
