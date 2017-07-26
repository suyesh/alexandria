FactoryGirl.define do
  factory :book do
    title "MyString"
    subtitle "MyText"
    isbn_10 "MyString"
    isbn_13 "MyString"
    description "MyText"
    released_on "2017-07-26"
    publisher nil
    author nil
  end
end
