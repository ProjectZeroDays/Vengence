# Vengence Automated Pentesting Audit Framework 

Vengence is a powerful Python script designed for auditing and security testing. It offers various functionalities, including user authentication, encryption and obfuscation, tool download and execution, payment processing, and more.

The script also includes functions for sending email notifications, sending SMS notifications, handling payment processing, creating configuration files, adding or removing the tool directory from the system PATH, downloading required tools, running the Vengence script, and sending an audit report via email and SMS.

Additionally, the script creates wiki and GitHub repository files, including markdown files for usage instructions, configuration settings, API keys, and troubleshooting. It also includes a GitHub workflow file for continuous integration and testing.

Vengence is a comprehensive tool that provides various functionalities for auditing and security testing. Its features make it useful for professionals in the cybersecurity industry or anyone who needs to perform audits and tests on networks and systems.

# Functionality

#### User Authentication: 

Securely authenticate users with a GUI login prompt or command-line input.


#### Encryption and Obfuscation: 

Protect sensitive data using encryption and obfuscation techniques.


#### Tool Download and Execution: 

Automatically download and execute required tools, such as Nmap and Wireshark, for auditing purposes.


#### Email and SMS Notifications: 

Send email and SMS notifications for various events, including the completion of audit reports.


#### Payment Processing: 

Handle financial transactions related to the auditing process with built-in payment processing functionality.


#### Wiki and GitHub Repository Files Creation: 

Create wiki and GitHub repository files for comprehensive documentation.


#### Clean-up: 

Automatically clean up all created files and directories after use.


# To Get Started

#### Install Vengence With:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ProjectZeroDays/Vengence/main/install.sh)"

# Usage

#### Display help message with all available options:

    --help

#### Generate an encryption key for securing sensitive data:
    
    --generate-key
    
#### Set up the database and add an admin user:

    --setup-db

#### Show a GUI login prompt for authentication:

    --login

#### Create configuration files for the script:

    --create-config

#### Add the tool directory to the system PATH:

    --add-path

#### Remove the tool directory from the system PATH:

    --remove-path

#### Download required tools, such as Nmap and Wireshark:
    
    --download-tools

#### Run Vengence to execute the downloaded tools:

    --run-tools 

#### Send an audit report via email and SMS:

    --send-report

#### Create wiki and GitHub repository files for documentation:

    --create-wiki

#### Remove all created files and clean up traces:

    --clean-up

For detailed instructions, refer to the sections in the navigation bar of the generated wiki or the help section (python Vengence.py --help).
