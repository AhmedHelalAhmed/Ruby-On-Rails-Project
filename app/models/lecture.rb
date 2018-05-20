class Lecture < ApplicationRecord
  mount_uploader :attachment, FileUploader
  belongs_to :user
  belongs_to :course
end
