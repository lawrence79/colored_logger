require 'rails/railtie'

module ColoredLogger
    config.logger = ActiveSupport::Logger.new('#{Rails.env}.log')
end
