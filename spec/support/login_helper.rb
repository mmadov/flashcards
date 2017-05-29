def login(email,password)
visit "sessions/new"
fill_in :email, with: email
fill_in :password, with: password
save_and_open_page
click_button 'Login'
end