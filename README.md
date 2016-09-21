# PCM Software
PCM is a web application, for the full management of preventive and corrective maintenances equipment within an industrial plant.

  - The production server is: [production server](http://pcm.landes.cl)
  - The staging server is: [staging server](http://test.pcm.landes.cl)

## How testing this project on your computer?
  - Clon this project [clone here by SSH](git@github.com:SislanERP/PCM.git)
  - Set your file `config/secrets.yml`, example:

    ```yml
    development:
      secret_key_base: c7b4233432516deb41b2984d949742d9a3411b2
      database:
        :username: your_usermane
        :password: your_password

      mailing:
        :username: your_mail
        :password: your_code_for_apps_of_google

    test:
      secret_key_base: 92e872ff017eafa8e760237c7c740bb6516fb24975e25b2f0bdc47c6960f
      database:
        :username: your_usermane
        :password: your_password

      mailing:
        :username: your_mail
        :password: your_code_for_apps_of_google

    staging:
      secret_key_base: 2f0d66fa658932e27f98f1e5d2031c397ef731b77d30b269357a7d43a16c
      database:
        :username: your_usermane
        :password: your_password

      mailing:
        :username: your_mail
        :password: your_code_for_apps_of_google

    production:
      secret_key_base: 2f0d66fa658932e27f98f1e5dc031c397ef731b77d30b269357a7d43a16c
      database:
        :username: your_usermane
        :password: your_password

      mailing:
        :username: your_mail
        :password: your_code_for_apps_of_google
    ```

  - REMEMBER: Do not keep production secrets in the repository.
  - Run `$ bundle`
  - Run `$ rake db:create db:migrate db:seed`
  - Run `$ rails s`
  - For logging in the admin site: http://localhost:3000/admin
    - username: `admin@example.com`
    - password: `password`
  - For logging in the WebApp: http://localhost:3000
    - username: `test@mail.com`
    - password: `123456`
  - That all.
