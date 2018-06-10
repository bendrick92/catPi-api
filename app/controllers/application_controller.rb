class ApplicationController < ActionController::API
    attr_reader :current_user
  
    protected
        def authenticate_request!
            unless api_token_given?
                render json: { errors: ['No API token passed'] }, status: :unauthorized
                return
            end
            @current_user = User.find_by(api_token: api_token)
        rescue
            render json: { errors: ['Invalid API token'] }, status: :unauthorized
        end
    
    private
        def api_token
            @api_token ||= if params[:token].present?
                params[:token]
            end
        end
    
        def api_token_given?
            api_token
        end
end