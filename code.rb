module McRails
  class EnvProxy
    def method_missing(name)
      return "Ghost Method" if name.end_with?('?')

      super
    end
  end

  def self.env
    #ENV['RAILS_ENV'] || 'development'

    proxy = EnvProxy.new
    proxy
  end
end