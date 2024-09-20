# Docker One-Click Installation Script

## Description

This project provides a one-click installation script for Docker on Ubuntu-based Linux systems. It automates the process of installing Docker Engine, Docker CLI, and Docker Desktop, making it easy for users to set up Docker on their machines.

## Features

- Installs Docker Engine and CLI tools
- Sets up Docker repository and GPG key
- Downloads and installs Docker Desktop
- Automates the entire installation process

## Prerequisites

- Ubuntu-based Linux distribution
- Sudo privileges
- Internet connection

## Installation

1. Clone this repository:
git clone https://github.com/yourusername/docker-install-script.git

2. Navigate to the project directory:
cd docker-install-script


3. Make the script executable:
chmod +x install_docker.sh


4. Run the script with sudo privileges:
sudo ./install_docker.sh


## Usage

After installation, you can start Docker Desktop from your applications menu or by running:
systemctl --user start docker-desktop


To verify the installation, run:
docker --version
docker-compose --version


## Contributing

Contributions to improve the script or add features are welcome. Maybe we can add in support for different Linux distros and user will get a choice to
choose which distro they have and the script will change depending on what they choose.

Please follow these steps:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

Distributed under the MIT License. See `LICENSE` for more information.

## Acknowledgements

- [Docker Documentation](https://docs.docker.com/)
- [Ubuntu Documentation](https://ubuntu.com/server/docs)

## Disclaimer

This script is provided as-is. Always review scripts before running them with sudo privileges. The author is not responsible for any damage caused by the use of this script.
