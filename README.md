# :hibiscus: Tiltzin - Final Capstone Project :hibiscus:

[<p align="center">Live Version</p>](https://tiltzin.herokuapp.com/)

## 📝 Table of Contents

* [About the Project](#-about-the-project)
  * [Tiltzin](#-tiltzin)
    * [Landing](#landing)
    * [Dashboard](#dashboard)
    * [What to expect in the future](#what-to-expect-in-the-future)
* [Getting Started](#getting-started)
* [Available Scripts](#available-scripts)
* [Built With](#built-with)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->
## 👉 About The Project

This is the Final Capstone Project for Microverse Complete Technical Curriculum. The implementation of the back end was completely built with Ruby on Rails.

The purpose of the project is to follow industry standards and present a complete application for booking appointments with the given design and requirements for its behaviour. As well we should choose a nice to have requirement, for Tiltzin I choose to work on transitions for making the user experience better, and in general, I worked in the front end design, as well as in the user authentication.
In order to achieve all of this we should implement the best practices learned throught the program.

The complete project's assignment can be seen [here](https://www.notion.so/Final-Capstone-Project-Book-an-Appointment-41ded2ee99ff4fe4becf91acb332ca26).

The link for the front end repository can be found [here](https://github.com/Luzaks/tiltzin-front-end).

## 👉 Tiltzin

Tiltzin is an application por medium and large screens, it's layout works up 650px, it tries to be a tourism agency but wants to be something more, its an application that allows you to connect with indigenous and ethnic people in order to be a responsible traveller, and/or tourist, with the natural environment and culture of the desired destiny, you can reserve a day for meeting and a family that belongs to the culture heritage of the area will be responsible of the lead activies booked for that destiny.

The style and desgin of the page was made thinking in the colors that represents the imaginery of indigenous ethnic groups of people in Mexico, but at the same time, it mix a much more modern approach in order to make it attractive to the eye.

The back end structure for Tiltzin lays in three tables, for users, for destinies and for appointments, thanks to this we are able to create new users and new appointments dynamically by receiving RESTful requests from the front end application. The destinies were manually created.


### 👉 Landing Page

In Tiltztin you need to sign up or sign in the same as you regularly do it in normal applications, a form will be displayed if you click on the Sign in or in Sign up link in the navigation bar of the landing page.

    
<div align="center"><img src="./assets/tiltzin_loggin.png" alt="tiltzin-sample"></div>

<div align="center"><img src="./assets/tiltzin_singup.png" alt="tiltzin-sample"></div>


### 👉 Tiltzin Dashboard

After joining in Tiltzin you'll se the dashboard with different pages that you can click on.

You'll be received with the Home page, with a welcome message and instructions for navigating throught the dashboard.


<div align="center"><img src="./assets/tiltzin_home.png" alt="tiltzin-sample"></div>


If you click the the destinies button, all the destinies registered in Tiltzin will be display in a slider, you can go to the left or the right as you please, looking at the photographs of our destinies.


<div align="center"><img src="./assets/tiltzin_destinies.png" alt="tiltzin-sample"></div>


By clicking in the know more button of every destiny you can see the details of the activies and reserve a day for the activities.


<div align="center"><img src="./assets/tiltzin_details.png" alt="tiltzin-sample"></div>


In the achievements section all the reserved days from all of the users will be displayed.


<div align="center"><img src="./assets/tiltzin_appointment.png" alt="tiltzin-sample"></div>


### What to expect in the future

Right now, as is it made, Tiltzin lacks of a sessions proper storage due to a problem with the domain name, you have to sign in everytime you reload the page, this problem will be fixed in the future, once the domain is available.

The same problem persists in the appointments sections, once the problem with the sessions is resolved, the appointments will be filtered only for the current user that logged in.

## Getting started

*   Click on the green button, in the repository. 
*   Add the following commands in your favorite bash:
```
git clone [copied text]
cd [repo name]
bundle install
rails s -p 3001
```

Note that you will need to create a username in order to create a new database in the cloned repository.

## Available Scripts

In the project directory, you can run, in your favorite bash:

1.- For starting the web-server along with the front end app `rails s -p 3001`

2.- For starting the web-server without the front end app `rails s`

3.- For installing dependencies `bundle install`

4.- For running the console `rails console`

5.- For testing check your local environment: 

-   In all environments you can run:

     `bundle exec rspec`
     
-   Only for an environtment with Ruby version of 2.7.0 and a rspec-rails version of 3.6:
     
     `rspec`
      

For running the app in the development mode after following the steps number 1 or number 2.<br />
Open [http://localhost:3001](http://localhost:3001) or [http://localhost:3000](http://localhost:3000), depending on the previous step followed, to view it in the browser.


### 🛠 Built With

*   Ruby on Rails
*   Bycript 
*   Json
*   Cors
*   Postgres
*   Rspec
*   Shoulda Matchers
*   Factory Bot 
*   Heroku


<!-- CONTACT & SUPPORT -->
## Contact & Support

🙍 Guadalupe Rangel - kanemekanik@gmail.com - ☄

You liked it? ⭐️ Star the project!!!

Any comment that you want to send I'll be happy to receive it.

## Acknowledgments

[Microverse](https://www.microverse.org/)

This project is for learning purposes. I don't own any image presented here.