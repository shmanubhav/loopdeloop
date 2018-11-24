defmodule Las.RoomUsers do
  import Ecto.Query, warn: false
  alias Las.Repo

  alias Las.RoomUsers.RoomUser

  def create_room_user(attrs \\ %{}) do
    %RoomUser{}
    |> RoomUser.changeset(attrs)
    |> Repo.insert()
  end

  # Returns the RoomUser if the given user_id and room_id are a row in Row users
  # table, meaning the user belongs to this room.
  def room_contains_user(user_id, room_id) do
      Repo.one from r in RoomUser,
      where: r.user_id == ^user_id and r.room_id == ^room_id
  end

end
