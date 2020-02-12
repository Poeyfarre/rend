# README
***Needs to be cleaned up***
RENDR

Project Pitch

1. Project Description:

    RENDR is a political microblog and polling service that allows users to interact with other user's posts and render daily scaled verdicts about their feelings towards their major federal and local elected officials. These votes combine to form a "heatmap" which is data that can be used in versatile ways to guage the country's or state's political temperature.

2. Schema:
    The app has five models. They are:
        a. Politician [:name, :state, :office, :party]
        b. Scale (J)  [rating scale 1-10, :date/time, :politician_id, :user_id]
        c. User       [:name, :username, :email, :state, :party]
        d. Post       [:title, :thought, :user_id]
        e. Comment    [:title, :content, :post_id]

3. User Stories:
    -As a user I want to have a homepage that promps me to register (Read)  
    -As a user I want to be able to create an account (Create)
    -As a user I want to be able to edit profile (Update)
    -As a user I want to be able to delete my account (Delete)
    -As a user I want to be able to rate my local candidate (Update)
    -As a user I want to be able to login to my accout (Update)
    -As a user I want to be able to logout of my account (Update)
    -As a user I want to be able to create a post (Create)
    -As a user I want to be able to edit my post (Update)
    -As a user I want to be able to delete my post (Delete)

4. Weekend Plans:

    a. Create all models and associations
    b. Create all controllers for all models and set RESTful route methods
    c. Set all preliminary/custom routes
    d. Research some APIs & Faker for data. I don't want to seed myself if possible.
    e. Labs!!

5. Stretch Goals

    -As a user I want to post a comment about my elected official (Create)  
    -As a user I want to be able to look at my local heat map to see how others are feeling around me (Read)
    -As a user I want to be able to edit my comment that I made on another user's post (Update)
    -As a user I want to be able to delete a post that I made when I had too much to drink the night before (Delete)
    -Add a 24hr countdown timer to the user's profile page to vote again (Read)
