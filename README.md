#GitLove

####[Click here to visit GitLove!](https://young-tundra-88777.herokuapp.com/devs/11)

##Description:


GitLove is a dating application geared specifically towards developers seeking for relationship with another developer. Users are required to log in to the app by filling out a form with some basic information including their Github username in order to verify that they are, in fact, a developer as well as their developer's level in order to have the option to be matched with a developer that is in the same or similar level. Developer's level ranges from junior to senior.   

Once logged in, users can browse developers in the home page and have the option to view additional details by clicking on that user. Once they view the users profile, users then have the option to comment on that developers profile. If the developer that has been commented on decides that they would like to continue the conversation with that developer, GitLove will check if the users "seeking" attributes matches the other user's "gender". If they are a match, both users will then be able to view each others profiles under their "Match" tab.  

Users also have the option to view their own profile information and edit it by navigating to edit their own "Profile" tab and clicking the "edit" button. They can then submit those changes and their profile will be updated automatically. Users also have the option to logout from every page of the application and then immidiatly have the option to log back in with ease. When users comment, they have the option to delete or edit posts. Gitlove is a fun and safe way to meet your perfect developer match! Happy matching :)

##Installation Instructions

###Direct Link:
[GitLove](https://young-tundra-88777.herokuapp.com/login)

###Cloning Repo:

1. Fork my repo: git@github.com:yaelamir/date_a_dev.git

2. The Paperclip gen is installed, however, in order to get it to work you must install ImageMagick. In your terminal run the following command:

	$sudo install ImageMagick

3. Then, follow the steps here: [Paperclip Installation](https://github.com/thoughtbot/paperclip/wiki/Quick-Start)

4. The next step is to create a free Heroku account in order to host the app. Install [heroku toolbelt](https://toolbelt.heroku.com/) then follow the steps here: [install heroku](https://devcenter.heroku.com/)

5.	Now we need to set up an account with [Amazon Web Services](https://aws.amazon.com/s3/) for a limited amount of storage space

6. IMPORTANT! Secure your AWS keys from your AWS user page by creating a .env file in your rails app (under vendor folder and above .gitignore) and put your AWS keys there.

7. Follow the steps [here](https://devcenter.heroku.com/articles/paperclip-s3) to link your Amazon S3 and Heroku accounts

8. ```$git push heroku master```

9. Enjoy!

##Layout & Design:
#####Note: Current pictures in app are default images. If user chooses not to have picture, the smiley face will automatically be uploaded.

![](https://i.imgur.com/c1b7YEZ.png)

Gitlove is designed to be user friendly. The navbar includes three tabs that allow the user to navigate through the app with ease. In addition, users may click on other users' names throughout the app in order to access that users profile.   

###Login:
####Users must be logged in to access the app.  
 ![](https://i.imgur.com/anF8O2J.png)
If you don't already have an account don't worry! Sign up is quick & easy. Gitlove requires only that users enter their first name, email, and a passowrd (as well as a password confirmation). However, users are encouraged to fill out as many fields as possible so that users have a better idea of who you are!

![](https://i.imgur.com/r2w6Jfh.png)

###Personal Profiles:  

Navigate to profile page by clicking the Profile tab on the far right corner of the page. This is where user information is displayed. In the center of the page is a thumbnail of the image file uploaded during login (or later on if user wishes to edit). On the left is the users general information and on the right is their developers information. This is also where users have the option to comment of profiles.  

![](https://i.imgur.com/HO5wJx9.png)

###User Profiles:  

Users may view other users' profiles by clicking on their name either on the home page or if they've commented on your profile.  

![](https://i.imgur.com/sPlhn8X.png)

###Comments:  

Comments are used for users to communicate with one another. Users may edit or delete comments as well.  

![](https://i.imgur.com/WFVHIvE.png)

###Editing Profile:  

Users have the ability to edit their profile and change their profile picture! The red button is to delete a profile.  

![](https://i.imgur.com/TDXwXKN.png)

###Matches:  

Matches will appear under matches tab  

![](https://i.imgur.com/G3NTDFr.png)
 
##Languages, Technologies, and Frameworks 
###Development:
- HTML
- SASS & CSS
- Ruby
- Ruby on Rails
- Bootstrap
- Ruby gems (Paperclip, bcrypt, puma, etc)


###Deployment:
#####Heroku  
- Heroku is a cloud applictaion platform to build and deploy apps
- click link for more info [Heroku](https://www.heroku.com/about)  

#####Amazon Web Services S3
- Amazon Simple Storage Service is a secure cloud storage
- click link for more info [Amazon S3](https://aws.amazon.com/s3/)

##Planning

###Trello:
Includes erd diagram and wireframes [Trello](https://trello.com/b/Z0A8hjMb/gitlove)

###Next Steps:
1. Users will be notified on their profile when someone has commented on their profile or if a match has been made
3. Navbar will include a comments tab that will allow users to view all the users they've had conversations with on one page
3. Date and time displayed on comments as well as a profile pic
4. A "like" tab with the ability to like other users and which will be used in the matching algorithm
5. Clickable profile pics instead of names
6. The ability to comment with an emoji
7. Users will have the ability to comment directly from the home page instead of having to go to the user's profile
8. More complex matching algorithm

###Link: [GitLove](https://young-tundra-88777.herokuapp.com/devs/11)




