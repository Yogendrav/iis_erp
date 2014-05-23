class Message < ActiveRecord::Base
	attr_accessible :subject, :body, :to
  is_private_message
  
  # The :to accessor is used by the scaffolding,
  # uncomment it if using it or you can remove it if not
  attr_accessor :to
  
end