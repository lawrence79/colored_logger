require 'rails/railtie'

module ColoredLogger
    class Railtie < Rails::Railtie
        initializer "colored_logger.initialize" do |app|
            app.config.logger = ActiveSupport::Logger.new('#{Rails.env}.log')
        end
    end
end
