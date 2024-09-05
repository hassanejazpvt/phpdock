# PHPDock 🚀

### Welcome to PHPDock! 🎉

This repository is designed to help you set up PHP Docker containers effortlessly, so you can focus on development without getting stuck on setup issues. 🛠️

#### This repository includes the following services:
- 🐘 **All PHP Versions** from `7.2` to `8.3`.
- 🛠️ **Simple and easy-to-use Docker environment**.
- 📦 All PHP containers include `composer` and `nvm` preinstalled.
- 📝 An `.env.phpdock` file can be created by copying the `.env.phpdock.example` file.
  - This file allows you to set **custom ports** for your PHP containers.
- ⚙️ **Easy-to-use `docker-compose.yml` file**.
  - Simply comment/uncomment the services or PHP versions you want to enable or disable.
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

#### Notes:
- 🔐 **SSL support is not yet available**.

Happy coding! 💻
