Rails.application.routes.draw do



  # Routes for the Favourite resource:

  # CREATE
  post("/insert_favourite", { :controller => "favourites", :action => "create" })
          
  # READ
  get("/favourites", { :controller => "favourites", :action => "index" })
  
  get("/favourites/:path_id", { :controller => "favourites", :action => "show" })
  
  # UPDATE
  
  post("/modify_favourite/:path_id", { :controller => "favourites", :action => "update" })
  
  # DELETE
  get("/delete_favourite/:path_id", { :controller => "favourites", :action => "destroy" })

  #------------------------------

  # Routes for the User account:

  # SIGN UP FORM
  get("/user_sign_up", { :controller => "user_authentication", :action => "sign_up_form" })        
  # CREATE RECORD
  post("/insert_user", { :controller => "user_authentication", :action => "create"  })
      
  # EDIT PROFILE FORM        
  get("/edit_user_profile", { :controller => "user_authentication", :action => "edit_profile_form" })       
  # UPDATE RECORD
  post("/modify_user", { :controller => "user_authentication", :action => "update" })
  
  # DELETE RECORD
  get("/cancel_user_account", { :controller => "user_authentication", :action => "destroy" })

  # ------------------------------

  # SIGN IN FORM
  get("/user_sign_in", { :controller => "user_authentication", :action => "sign_in_form" })
  # AUTHENTICATE AND STORE COOKIE
  post("/user_verify_credentials", { :controller => "user_authentication", :action => "create_cookie" })
  
  # SIGN OUT        
  get("/user_sign_out", { :controller => "user_authentication", :action => "destroy_cookies" })
             
  #------------------------------

  # Routes for the Role resource:

  # CREATE
  post("/insert_role", { :controller => "roles", :action => "create" })
          
  # READ
  get("/roles", { :controller => "roles", :action => "index" })
  
  get("/roles/:path_id", { :controller => "roles", :action => "show" })
  
  # UPDATE
  
  post("/modify_role/:path_id", { :controller => "roles", :action => "update" })
  
  # DELETE
  get("/delete_role/:path_id", { :controller => "roles", :action => "destroy" })

  #------------------------------

  # Routes for the Player resource:

  # CREATE
  post("/insert_player", { :controller => "players", :action => "create" })
          
  # READ
  get("/players", { :controller => "players", :action => "index" })
  
  get("/players/:path_id", { :controller => "players", :action => "show" })
  
  # UPDATE
  
  post("/modify_player/:path_id", { :controller => "players", :action => "update" })
  
  # DELETE
  get("/delete_player/:path_id", { :controller => "players", :action => "destroy" })

  #------------------------------

  # Routes for the Game resource:

  # CREATE
  post("/insert_game", { :controller => "games", :action => "create" })
          
  # READ
  get("/games", { :controller => "games", :action => "index" })
  
  get("/games/:path_id", { :controller => "games", :action => "show" })
  
  # UPDATE
  
  post("/modify_game/:path_id", { :controller => "games", :action => "update" })
  
  # DELETE
  get("/delete_game/:path_id", { :controller => "games", :action => "destroy" })

  #------------------------------

  # Routes for the Moment resource:

  # CREATE
  post("/insert_moment", { :controller => "moments", :action => "create" })
          
  # READ
  get("/moments", { :controller => "moments", :action => "index" })
  
  get("/moments/:path_id", { :controller => "moments", :action => "show" })
  
  # UPDATE
  
  post("/modify_moment/:path_id", { :controller => "moments", :action => "update" })
  
  # DELETE
  get("/delete_moment/:path_id", { :controller => "moments", :action => "destroy" })

  #------------------------------

end
