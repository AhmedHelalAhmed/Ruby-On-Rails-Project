class Lecture < ApplicationRecord
  acts_as_votable
  mount_uploader :attachment, FileUploader
  belongs_to :user
  belongs_to :course
  has_many :comments
end
