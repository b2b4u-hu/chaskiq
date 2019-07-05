module Types
  class AgentType < Types::BaseObject
    field :id, Int, null: false
    field :email, String, null: true
    #field :user, [Types::UserType], null: true
    field :name, String, null: true
    field :first_name, String, null: true
    field :last_name, String, null: true
    field :country, String, null: true
    field :country_code, String, null: true
    field :region, String, null: true
    field :region_code, String, null: true

    field :app, [Types::AppType], null: true
    
    field :online, Boolean, null: true
    def online
      object.online?
    end

    field :offline, Boolean, null: true

    field :sign_in_count, String, null: true
    field :last_sign_in_at, String, null: true
    field :invitation_accepted_at, String, null: true
    field :invitation_sent_at, String, null: true

    def offline
      object.offline?
    end

    field :properties, Types::JsonType, null: true

    field :conversations, type: Types::PaginatedConversationsType, null: true do
      argument :page, Integer, required: false, default_value: 1
      argument :per, Integer, required: false, default_value: 20
    end

    def conversations(page: , per:)
      object.conversations.page(page).per(per)
    end

  end
end