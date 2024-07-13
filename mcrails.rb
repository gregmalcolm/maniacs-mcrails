module McRails
  class EnvProxy
    def to_s
      ENV['RAILS_ENV'] || 'development'
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end