# frozen_string_literal: true

class Task < ActiveRecord::Base
  validates :name, :user_id, presence: true

  belongs_to :user
  end
