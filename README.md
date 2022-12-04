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

```sh
  bin/rails test test/models/article_test.rb
```

### Deployment

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

> Mention all of the collaborators of this project.

👤 **Author1**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

👤 **Author2**

- GitHub: [@githubhandle](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [LinkedIn](https://linkedin.com/in/linkedinhandle)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FUTURE FEATURES -->

## 🔭 Future Features <a name="future-features"></a>

> Describe 1 - 3 features you will add to the project.

- [ ] **[new_feature_1]**
- [ ] **[new_feature_2]**
- [ ] **[new_feature_3]**

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

> Write a message to encourage readers to support your project

If you like this project...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- ACKNOWLEDGEMENTS -->

## 🙏 Acknowledgments <a name="acknowledgements"></a>

> Give credit to everyone who inspired your codebase.

I would like to thank...

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

> Add at least 2 questions new developers would ask when they decide to use your project.

- **[Question_1]**

  - [Answer_1]

- **[Question_2]**

  - [Answer_2]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./LICENSE) licensed.

_NOTE: we recommend using the [MIT license](https://choosealicense.com/licenses/mit/) - you can set it up quickly by [using templates available on GitHub](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/adding-a-license-to-a-repository). You can also use [any other license](https://choosealicense.com/licenses/) if you wish._

<p align="right">(<a href="#readme-top">back to top</a>)</p>
