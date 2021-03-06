# Add a callback - to be executed before each request in development,
# and at startup in production - to patch existing app classes.
# Doing so in init/environment.rb wouldn't work in development, since
# classes are reloaded, but initialization is not run each time.
# See http://stackoverflow.com/questions/7072758/plugin-not-reloading-in-development-mode
#
require 'dispatcher'
Dispatcher.to_prepare do    
    # Front page needs some additional info
    GeneralController.class_eval do
        # Make sure it doesn't break if blog is not available 
        def frontpage
            begin
                blog
            rescue
                @blog_items = []
                @twitter_user = MySociety::Config.get('TWITTER_USERNAME', '')
            end
            
            begin
#                @featured_requests = InfoRequest.all(:conditions => { :described_state => ['successful', 'partially_successful'] }, :order => "updated_at asc", :limit => 4).reverse
                @featured_requests = InfoRequest.all(:order => "updated_at desc", :limit => 4).reverse
            rescue
                @featured_requests = []
            end
        end
    end

    PublicBodyController.class_eval do
        def index
            @public_bodies = PublicBody.paginate([], :page => 10)
            render :template => "public_body/list"
        end
    end
end