Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # origins '*'
    origins '*'
    # origins 'https://cdm16022.contentdm.oclc.org/'
    resource '*', headers: :any, methods: [:get, :post, :patch, :put]
  end
end
