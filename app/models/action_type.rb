# -*- coding: utf-8 -*-
class ActionType < ApplicationRecord
  module AccessType
    READ = 1
    WRITE = 2
    DELETE = 3
  end

  def self.access_type_map
    {
      AccessType::READ => "Read",
      AccessType::WRITE => "Write",
      AccessType::DELETE => "Delete",
    }
  end

  def action_type_display_in_words(action_type)
    self.class.access_type_map[action_type]
  end

end
