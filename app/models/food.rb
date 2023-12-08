class Food < ApplicationRecord
    belongs_to :user
    mount_uploader :image, ImageUploader

    has_many :likes, dependent: :destroy
  has_many :liked_users, through: :likes, source: :user

  has_many :comments, dependent: :destroy

#foodsテーブルから中間テーブルに対する関連付け
has_many :food_tag_relations, dependent: :destroy
#foodsテーブルから中間テーブルを介してTagsテーブルへの関連付け
has_many :tags, through: :food_tag_relations, dependent: :destroy

end
