# Rendr

RENDR is a political microblog and polling service that allows users to interact with other user's posts and render daily scaled verdicts about their feelings towards their major federal and local elected officials. These votes combine to form an average which is data that can be used in versatile ways to guage the state's political temperature.

## Getting Started

Clone the repo to your local machine.
Run bundle install
Run rails db:migrate
Run your rails server


### Schema

    The app has five models. They are:
        a. Politician [:name, :state, :office, :party]
        b. Scale (J)  [rating scale 1-10, :date/time, :politician_id, :user_id]
        c. User       [:name, :username, :email, :state, :party]
        d. Post       [:title, :thought, :user_id]
        e. Comment    [:title, :content, :post_id]

## User Stories and CRUD Functionality

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

## Built With

* [Bulma](http://www.bulma.io) - The CSS framework used


## Author

* **Jacy Leech** - *Initial work* - [Poeyfarre](https://github.com/Poeyfarre)


## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details


