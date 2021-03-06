class ApplicationController < ActionController::Base

    # Security
    protect_from_forgery with: :exception, prepend: true

    # Sentry Issue Tracking
    before_action :set_raven_context


    private


    def set_raven_context
        Raven.extra_context params: params.to_unsafe_h, url: request.url
    end

end
