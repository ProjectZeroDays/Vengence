# Vengence Automated Pentesting Audit Framework 

## Documentation

This documentation provides a comprehensive guide to using the Framework. 

Vengence is a powerful Python script designed for auditing and security testing. It offers various functionalities, including user authentication, encryption and obfuscation, tool download and execution, email and SMS notifications, payment processing, and more.

## Features

User Authentication: 

Securely authenticate users with a GUI login prompt or command-line input.

Encryption and Obfuscation: 

Protect sensitive data using encryption and obfuscation techniques.

Tool Download and Execution: 

Automatically download and execute required tools, such as Nmap and Wireshark, for auditing purposes.

Email and SMS Notifications: 

Send email and SMS notifications for various events, including the completion of audit reports.

Payment Processing: 

Handle financial transactions related to the auditing process with built-in payment processing functionality.

Wiki and GitHub Repository Files Creation: 

Create wiki and GitHub repository files for comprehensive documentation.

Clean-up: 

Automatically clean up all created files and directories after use.

## Quick Start

Clone the repository: 
   
    git clone https://github.com/projectzerodays/Vengence.git

Navigate to the directory: 
   
    cd Vengence

Install dependencies: 
   
    pip install -r requirements.txt

Run the script: 
   
    python Vengence.py

## Usage

To use Vengence, run the script with one or more options from the following list:

--help: Display help message with all available options.
--generate-key: Generate an encryption key for securing sensitive data.
--setup-db: Set up the database and add an admin user.
--login: Show a GUI login prompt for authentication.
--create-config: Create configuration files for the script.
--add-path: Add the tool directory to the system PATH.
--remove-path: Remove the tool directory from the system PATH.
--download-tools: Download required tools, such as Nmap and Wireshark.
--run-tools: Run Vengence to execute the downloaded tools.
--send-report: Send an audit report via email and SMS.
--create-wiki: Create wiki and GitHub repository files for documentation.
--clean-up: Remove all created files and clean up traces.

For detailed instructions, refer to the sections in the navigation bar of the generated wiki or the help section (python Vengence.py --help).

## Functionality 

1. **User Authentication**:

   The script allows for user authentication using a GUI login prompt or command-line input.
   
3. **Encryption and Obfuscation**:
  
   The script provides encryption and obfuscation capabilities to secure sensitive data.
   
5. **Tool Download and Execution**:

   Vengence can download required tools, such as Nmap and Wireshark, and execute them for auditing purposes.

6. **Email and SMS Notifications**:
   
   The script can send email and SMS notifications for various events, such as the completion of an audit report.
   
7. **Payment Processing**:
   
   Vengence includes payment processing functionality to handle financial transactions related to the auditing process.
   
8. **Wiki and GitHub Repository Files Creation**:

   The script creates wiki and GitHub repository files for documentation purposes.
   
10. **Clean-up**:

    Vengence can clean up all created files and directories after use.

The script also includes functions for sending email notifications, sending SMS notifications, handling payment processing, creating configuration files, adding or removing the tool directory from the system PATH, downloading required tools, running the Vengence script, and sending an audit report via email and SMS.

Additionally, the script creates wiki and GitHub repository files, including markdown files for usage instructions, configuration settings, API keys, and troubleshooting. It also includes a GitHub workflow file for continuous integration and testing.

Vengence is a comprehensive tool that provides various functionalities for auditing and security testing. Its features make it useful for professionals in the cybersecurity industry or anyone who needs to perform audits and tests on networks and systems.

## Run

Run the Script With:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ProjectZeroDays/Vengence/main/install.sh)"

    
