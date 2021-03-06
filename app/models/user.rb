class User < ApplicationRecord
  acts_as_voter
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #for gender
  enum gender: {"Prefer not to choose": 0, Male: 1, Female: 2}

  #for avatar
  mount_uploader :avatar, AvatarUploader

  validates_presence_of :avatar
  validates_integrity_of :avatar
  validates_processing_of :avatar
  has_many :courses
  has_many :lectures

end
