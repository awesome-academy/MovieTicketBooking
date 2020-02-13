# frozen_string_literal: true

class Movie < ApplicationRecord
  enum status: %i[now_showing comming_soon]
end
