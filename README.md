# PHPDock 🚀

### Welcome to PHPDock! 🎉

This repository is designed to help you set up PHP Docker containers effortlessly, so you can focus on development without getting stuck on setup issues. 🛠️

#### This repository includes the following services:
- 🐘 **All PHP Versions** from `7.2` to `8.3`.
- 🛠️ **Simple and easy-to-use Docker environment**.
- 📦 All PHP containers include `composer` and `nvm` preinstalled.
- 📝 An `.env.phpdock` file can be created by copying the `.env.phpdock.example` file.
  - This file allows you to set **custom ports** for your PHP containers.
  - You can also set the **root password for MariaDB** in this file.
- ⚙️ **Easy-to-use `docker-compose.yml` file**.
  - Simply comment/uncomment the services or PHP versions you want to enable or disable.
- 🌐 **Nginx and Apache2 server support**.
  - Default configuration files (`default.conf`) are provided in the `apache2` and `nginx` directories. These can be used as-is or customized.
- 🗄️ **MariaDB and Adminer support**.
  - The MariaDB container is included for database management.
  - Use the **DB container name as the host** when connecting via Adminer.
- 🚀 **More features coming soon!**

#### Extended Configuration:
- 🔧 Every PHP version from `7.2` to `8.3` includes `php.ini` and `www.conf` files that can be modified to override the default PHP configurations.

#### Web Server Support:
- 🌐 **Nginx and Apache2 server support** has been added.
  - These services are present in a separate Docker Compose file: `docker-compose-servers.yml`.
  - Default configuration files (`default.conf`) are provided in the `apache2` and `nginx` directories. These can be used as-is or customized to suit your needs.
- 🐘 All PHP containers now have the same container name: `phpdock-php`.
  - This allows the running PHP container to be linked as `fpm` in the `default.conf` files of both Apache2 and Nginx.
- ⚠️ **Running multiple PHP versions simultaneously**:
  - To run multiple PHP versions at the same time, you need to set different container names for each PHP version.
  - Update the container name in the `default.conf` file for Nginx or Apache2 to match the specific PHP version you want the server to link to.

#### Database Support:
- 🗄️ **MariaDB** support has been added.
  - Set the root password in the `.env.phpdock` file.
  - Use the DB container name as the host when connecting via Adminer.
- 🛠️ **Adminer** is included for easy database management.
  
#### Coming Soon:
- 🐘 **Postgres and Mongo** support will be added soon.

#### Notes:
- 🔐 **SSL support is not yet available**.

Happy coding! 💻
