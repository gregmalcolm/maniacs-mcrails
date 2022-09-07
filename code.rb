module McRails
  class EnvProxy
    def inspect
      ENV['RAILS_ENV'] || 'development'
    end

    def method_missing(name)
      return "Ghost Method" if name.end_with?('?')

      super
    end
  end

  def self.env
    proxy = EnvProxy.new
    proxy
  end
end