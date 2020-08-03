class Product < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  validates :name, :introduction, :size_id, :condition_id,
            :postage_payer_id, :prefecture_code, :prep_date_id,
            :price, :trading_status, :seller_id, presence: true
  has_many :photos, dependent: :destroy
  has_many :categories_products, dependent: :destroy
  has_many :categories, through: :categories_products
  belongs_to :brand, optional: true
  belongs_to :seller, class_name: "User" ,optional: true
  belongs_to_active_hash :size
  belongs_to_active_hash :condition
  belongs_to_active_hash :postage_payer
  belongs_to_active_hash :prep_date
  accepts_nested_attributes_for :photo

  enum postage_payer: {
  "送料込み(出品者負担)":1,
  "着払い(購入者負担)":2
}

end

