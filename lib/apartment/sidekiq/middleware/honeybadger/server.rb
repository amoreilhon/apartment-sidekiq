module Apartment::Sidekiq::Middleware::Honeybadger
  class Server
    def call(worker_class, item, queue)
      Honeybadger.context({tenant: Tenant.current})

      yield
    end
  end
end
