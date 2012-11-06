# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  time_scope  :integer
#  project_id  :integer
#  finished    :boolean
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
  attr_accessible :description, :finished, :name, :project_id, :time_forecast

  belongs_to :project

  has_many :sittings, dependent: :destroy
  has_many :users,  :through => :sittings


  validates :project_id, presence: true

  default_scope :order => 'tasks.created_at DESC'

end
