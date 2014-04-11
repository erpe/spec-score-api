json.extract!( @user, :id, :nick, :created_at, :updated_at, 
               :count_specs, :count_succeeded, :count_failures,
               :overall_duration )
