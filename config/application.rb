require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WorkGithub
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_view.field_error_proc = Proc.new { |html_tag, instance| html_tag }
    #バリデーションでrender後にフォームのレイアウトが崩れるのを防ぐため
    config.time_zone ='Tokyo'
    config.i18n.default_locale = :ja
  end
end
