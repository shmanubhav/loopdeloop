# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Las.Repo.insert!(%Las.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

alias Las.Repo
alias Las.Users.User
alias Las.Rooms.Room

pwhash = Argon2.hash_pwd_salt("pass1")

Repo.insert!(%User{email: "lindsay@example.com", admin: true, password_hash: pwhash, first_name: "Lindsay", last_name: "Hauz"})
Repo.insert!(%User{email: "lindsay1@example.com", admin: true, password_hash: pwhash, first_name: "Lindsay", last_name: "Hauz"})

Repo.insert!(%Room{name: "lindsay", code: 123, user_id: 1})
