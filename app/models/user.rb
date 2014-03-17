class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :task_lists

  after_create :create_task_list

  def create_task_list
    task_lists.create!(name: 'My first list')
  end

  def first_list
    task_lists.first
  end
end
