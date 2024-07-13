module McRails
  def self.env
    ENV['RAILS_ENV'] || 'development'
  end
end