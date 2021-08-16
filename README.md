# Hela Osu - හෙළ ඔසු


[![helaosu](https://github.com/LakinduK/helaosu/blob/main/public/assets/images/logo-dark.png)](https://github.com/LakinduK/helaosu/blob/main/public/assets/images/logo-dark.png)


## Introduction Slideshow :
https://slides.com/lakinduk/helaosu
# To Install and Run the Laravel project

#### prerequisite -
* install xampp
* install composer
* install laravel
  

#### run these commands and install laravel
```sh
composer create-project laravel/laravel example-app
cd example-app
php artisan serve
```
#### 1) edit the line of php version 08support in composer.json file (line 11)
```dart
"php": "^7.2.5|^8.0",
```
#### 2) update your composer by running this command
```dart
  composer update
```

#### 3) create a database in mysql 
ex:-test

#### 4) add that database name to .env files database name (line 12)
ex:-
  DB_DATABASE=test

#### migrate the database using this command
```sh
php artisan migrate
```
#### 6) run the app
```sh
php artisan serve
```
# creating an admin account via database for the first time
* signup a new user
* go to sql database table and change the newly created user's user type to 0
* logout and login 
---

if you found this project valuebale, try deploying it in your own digitalocean droplet. 👦
(affiliate link)
[![DigitalOcean Referral Badge](https://web-platforms.sfo2.digitaloceanspaces.com/WWW/Badge%202.svg)](https://www.digitalocean.com/?refcode=a871472da2d9&utm_campaign=Referral_Invite&utm_medium=Referral_Program&utm_source=badge)

# Screenshots

![image](https://user-images.githubusercontent.com/38062348/113062074-04e9f580-9168-11eb-8955-40ae8a585e74.png)

Home

![image](https://user-images.githubusercontent.com/38062348/113061988-dbc96500-9167-11eb-85c6-e86d6caf983d.png)

Login / Sign Up

![image](https://user-images.githubusercontent.com/38062348/113062225-437fb000-9168-11eb-898e-2160d0b37b1b.png)

Add Recipies

