# Hela Osu - හෙළ ඔසු


[![helaosu](https://github.com/LakinduK/helaosu/blob/main/public/assets/images/logo-dark.png)](https://github.com/LakinduK/helaosu/blob/main/public/assets/images/logo-dark.png)

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

