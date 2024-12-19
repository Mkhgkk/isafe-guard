# iSafe Guard Detector

## Getting Started

This guide will walk you through the steps required to get the project up and running on your local machine.

---

### Prerequisites

1. **PC with GPU**

   - This project requires a PC with a GPU.
   - Make sure nvidia drivers are installed and working properly.
   - Install the NVIDIA Container Toolkit by following the instructions [here](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html).

2. **Environment Variables**
   - Create a `.env` file at the root of the project directory.
   - Populate it with the necessary environment variables required by the project. (Ensure you have the `CLOUDFLARE_TOKEN` variable set.)

---

### Cloning the Repository

1. Clone the project repository to your local machine:

   ```bash
   git clone <repository-url>
   cd <project-folder>
   ```

2. Make the `pull-projects.sh` script executable:

   ```bash
   chmod +x scripts/pull-projects.sh
   ```

3. Run the script to pull any sub-projects or dependencies:
   ```bash
   scripts/pull-projects.sh
   ```

---

### Building and Running the Project

1. Start and run the application using Docker Compose:

   ```bash
   docker compose up -d
   ```

   The `-d` flag runs the services in detached mode.

2. Once the services are up, you can access them via the appropriate ports specified in the `docker-compose.yml` file.

---

### Notes

- Ensure that Docker is installed and running on your system.
- If you encounter GPU-related issues, double-check that the NVIDIA Container Toolkit is properly installed.
- For any service-specific configurations, refer to the `docker-compose.yml` file.

Happy coding!
