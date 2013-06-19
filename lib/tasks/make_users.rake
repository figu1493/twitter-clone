
  desc "Fill database with sample data"
  task populate: :environment do
    100.times do|x|
    User.create!(name: "John #{x}",
                 email: "example#{x}@example.org",
                 password: "foobar",
                 password_confirmation: "foobar")
    end
  end