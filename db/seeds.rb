# typed: strong
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

trail_organisation = Organisation.create!(
  name: "Trail",
)

login_email = "admin@example.com"
login_password = "password"

User.create!(
  organisation: trail_organisation,
  name: "Jane Admin",
  email: login_email,
  password: login_password,
  confirmed_at: Time.zone.now,
)

puts "You can now log in locally using these credentials:

email:    #{login_email}
password: #{login_password}
"
