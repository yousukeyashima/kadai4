class Relationship < ApplicationRecord
  #Userモデルに対しfollowerの名前でbelongs_toの関連付けを行う#
  belongs_to :follower, class_name: "User"
  #Userモデルに対しfollowedの名前でbelongs_toの関連付けを行う#
  belongs_to :followed, class_name: "User"
end
