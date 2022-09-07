module McRails
  def self.env
    #ENV['RAILS_ENV'] || 'development'

    proxy = EnvProxy.new
    proxy
  end
end