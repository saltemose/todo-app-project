# frozen_string_literal: true

class Task < ActiveRecord::Base
  validates :name, :user_id, presence: true

  belongs_to :user

  def has_edits?
    return true if Edit.where(:task_id => self.id)
  end 
  
  end
