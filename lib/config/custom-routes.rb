if ENV["RAILS_ENV"] != "test"
    ActionController::Routing::Routes.draw do |map|
        # Additional help pages
        map.with_options :controller => 'help' do |help|
            help.help_help_out '/help/help_out_old', :action => 'help_out'

            help.help_press '/help/press_old', :action => 'press'
            help.help_privacy_policy '/help/privacy_policy', :action => 'privacy_policy'
            help.help_terms_of_use '/help/terms_of_use', :action => 'terms_of_use'
            help.help_data_protection '/help/data_protection', :action => 'data_protection'
            
            help.help_hg123 '/help/hg123', :action => 'hg123'
            help.help_legea544 '/help/legea544', :action => 'legea544'

            help.help_requesting_short '/help/requesting_short', :action => 'requesting_short'
        end
        
        # We want to start by showing the public bodies categories and search only
        map.with_options :controller => 'public_body' do |body|
            body.body_index "/body/", :action => "list"
        end
    end
end
