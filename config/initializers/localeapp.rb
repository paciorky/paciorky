if !defined?(Rails) || (defined?(Rails) && (Rails.env.staging? || Rails.env.development?))
  require 'localeapp/rails'
  require 'logger'

  Localeapp.configure do |config|
    config.api_key = 'YK5Edpy4Rt3x3DnTYA5ucwXnju2Gt61cgMnUG01RVoIyzkynMt'
    config.sending_environments = [:development]
    config.polling_environments = []
    config.reloading_environments = []
    config.logger = Logger.new(STDOUT)
  end
end