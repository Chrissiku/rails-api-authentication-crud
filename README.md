# Rails API Authentication and CRUD

> This project is focused on how to authenticate a Ruby-on-Rails API only app using `gem devise`, `gem devise-jtw` and `JWT Tokens`

## 🛠 Built With

- Ruby 3.1.2
- Rails 7.0.4
- PostgreSQL

## 💻 Getting Started

> To get a working local copy, follow these steps listed bellow.

### Prerequisites

In order to run this project you need:

- Nodejs installed on your computer
- Visual studio code or your preferred code editor
- Have a basic Knowledge i Ruby-on-Rails and APIs

### Setup

Open your terminal inside your destination folder and run the command bellow to clone this repository to your folder:

```sh
  git clone git@github.com:Chrissiku/rails-api-authentication-crud.git
```

or just

```sh
git clone https://github.com/Chrissiku/rails-api-authentication-crud
```

Then :

```sh
    cd rails-api-authentication-crud/
```

### Install

Install all gems

```sh
 bundle install
```

Create database

```sh
 rails db:create
```

Run migrations to create all tables

```sh
 rails db:migrate
```

see the database

```sh
 rails db:seed
```

Run the project on your local server

```sh
  rails server
```

Now you can navigate to [http://127.0.0.1:3000](http://127.0.0.1:3000)
inside [Postman](https://www.postman.com/) and enjoy all the end-points

### Usage

To run the project, execute the following command:

Open [Postman](https://www.postman.com/) and perform the following tests;

Examples

- Register a new user
  Request : `POST`
  URL : `http://127.0.0.1:3000/users`
  Body :
  ```JS
    {
        "user" : {
            "email":"user@gmail.com",
            "password":"123456"
        }
    }
    ```
- Login a new user
  Request : `POST`
  URL : `http://127.0.0.1:3000/users/sign_in`
  Body :
  ```JS
    {
        "user" : {
            "email":"user@gmail.com",
            "password":"123456"
        }
    }
    ```
- Logout a new user
  Request : `DELETE`
  URL : `http://127.0.0.1:3000/users/sign_out`
  Header : `Copy header form the login`

- Logged User

  Request : `GET`
  URL : `http://127.0.0.1:3000/users/current`

- Get ALl users

  Request : `GET`
  URL : `http://127.0.0.1:3000/users/all`
  Header : `Copy header form the login

- List all companies

  Request : `GET`
  URL : `http://127.0.0.1:3000/api/v1/companies/`
  Header : 

- Create a new company
  Request : `POST`
  URL : `http://127.0.0.1:3000/api/v1/companies/`
  Body :
  ```JS
    {
        "company": {
        "name": "company 1",
        "address": "address",
        "established_year": "2022"
    }
    }
    ```

- Update company
  Request : `PATCH` or `PUT`
  URL : `http://127.0.0.1:3000/api/v1/companies/:id`
  Body :
  ```JS
    {
        "company": {
        "name": "company updated",
        "address": "address",
        "established_year": "2022"
    }
    }
    ```

- Delete a company
  Request : `DELETE` 
  URL : `http://127.0.0.1:3000/api/v1/companies/:id`

## 👥 Author

👤 **Chris Siku**

- GitHub: [@Chrissiku](https://github.com/Chrissiku)
- LinkedIn: [christian-siku](https://www.linkedin.com/in/
christian-siku/)


## 🔭 Future Features

- [ ] Create an appropriate frontend usinf NextJs, TypeScript and Reactjs

## 🤝 Contributing 
Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).


<!-- SUPPORT -->

## ⭐️ Show your support

> Write a message to encourage readers to support your project

If you like this project...


<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> To APPSIMPACT 

## 📝 License

This project is [MIT](./LICENSE) licensed.

