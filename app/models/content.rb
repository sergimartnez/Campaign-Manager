class Content < ApplicationRecord
  belongs_to :prototype
  has_many :comments
  has_attached_file :attachment
  do_not_validate_attachment_file_type :attachment
end
