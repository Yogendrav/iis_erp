class Holiday < ActiveRecord::Base
  attr_accessible :date, :name
  NAME = %w(New-Year Republic-Day Holi Rangpanchami eid-ul-fitr Independence-Day Rakshabandhan Krishna-Janmashtami Ganesh-Chaturthi Gandhi-Jayanti Dashahra/Vijaydashmi Diwali Bhai-Duj Christmas)
end
