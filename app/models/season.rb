# frozen_string_literal: true

class Season < ApplicationRecord
  has_many :matches
  validates_presence_of :title, :created_at
end
