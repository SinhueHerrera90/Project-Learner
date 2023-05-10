Rails.application.routes.draw do

get("/homepage", {:controller => "user_authentication", :action => "homepage" })

  # Routes for the Location resource:

  # CREATE
  post("/insert_location", { :controller => "locations", :action => "create" })
          
  # READ
  get("/locations", { :controller => "locations", :action => "index" })
  
  get("/locations/:path_id", { :controller => "locations", :action => "show" })
  
  # UPDATE
  
  post("/modify_location/:path_id", { :controller => "locations", :action => "update" })
  
  # DELETE
  get("/delete_location/:path_id", { :controller => "locations", :action => "destroy" })

  #------------------------------

  # Routes for the Enrollment resource:

  # CREATE
  post("/insert_enrollment", { :controller => "enrollments", :action => "create" })
          
  # READ
  get("/enrollments", { :controller => "enrollments", :action => "index" })
  
  get("/enrollments/:path_id", { :controller => "enrollments", :action => "show" })
  
  # UPDATE
  
  post("/modify_enrollment/:path_id", { :controller => "enrollments", :action => "update" })
  
  # DELETE
  get("/delete_enrollment/:path_id", { :controller => "enrollments", :action => "destroy" })

  #------------------------------

  # Routes for the Review resource:

  # CREATE
  post("/insert_review", { :controller => "reviews", :action => "create" })
          
  # READ
  get("/reviews", { :controller => "reviews", :action => "index" })
  
  get("/reviews/:path_id", { :controller => "reviews", :action => "show" })
  
  # UPDATE
  
  post("/modify_review/:path_id", { :controller => "reviews", :action => "update" })
  
  # DELETE
  get("/delete_review/:path_id", { :controller => "reviews", :action => "destroy" })

  #------------------------------

  # Routes for the Activity resource:

  # CREATE
  post("/insert_activity", { :controller => "activities", :action => "create" })
          
  # READ
  get("/activities", { :controller => "activities", :action => "index" })
  
  get("/activities/:path_id", { :controller => "activities", :action => "show" })
  
  # UPDATE
  
  post("/modify_activity/:path_id", { :controller => "activities", :action => "update" })
  
  # DELETE
  get("/delete_activity/:path_id", { :controller => "activities", :action => "destroy" })

  #------------------------------

  # Routes for the Category resource:

  # CREATE
  post("/insert_category", { :controller => "categories", :action => "create" })
          
  # READ
  get("/categories", { :controller => "categories", :action => "index" })
  
  get("/categories/:path_id", { :controller => "categories", :action => "show" })
  
  # UPDATE
  
  post("/modify_category/:path_id", { :controller => "categories", :action => "update" })
  
  # DELETE
  get("/delete_category/:path_id", { :controller => "categories", :action => "destroy" })

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

end
