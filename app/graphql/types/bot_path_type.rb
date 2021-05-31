# frozen_string_literal: true

module Types
  class BotPathType < Types::BaseObject
    field :id, String, null: true
    field :title, String, null: true
    field :key, String, null: true
    field :follow_actions, Types::JsonType, null: true
    # field :predicates, Types::JsonType, null: true
    field :steps, Types::JsonType, null: true
    def steps
      object["steps"].presence || []
    end
  end
end
