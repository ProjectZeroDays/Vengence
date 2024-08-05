# Vengence Automated Pentesting Audit Framework 

## Documentation

This documentation provides a comprehensive guide to using the Framework. 

Vengence is a Python script that provides various functionalities related to auditing and security testing. The script has several features, including user authentication, encryption and obfuscation, tool download and execution, email and SMS notifications, payment processing, and more.

The script can be run from the command line using the following syntax: `python Vengence.py [OPTIONS]`. Various options are available to perform specific tasks. For example:

- `--help` displays the help message with all available options.
- `--generate-key` generates an encryption key for securing sensitive data.
- `--setup-db` sets up the database and adds an admin user.
- `--login` shows a GUI login prompt for authentication.
- `--create-config` creates configuration files for the script.
- `--add-path` adds the tool directory to the system PATH.
- `--remove-path` removes the tool directory from the system PATH.
- `--download-tools` downloads required tools, such as Nmap and Wireshark.
- `--run-tools` runs Vengence to execute the downloaded tools.
- `--send-report` sends an audit report via email and SMS.
- `--create-wiki` creates wiki and GitHub repository files for documentation.
- `--clean-up` removes all created files and cleans up traces.

The script also includes a help section that provides detailed instructions on how to use each option. This is displayed when the `--help` option is used.

In terms of its functionality, Vengence performs various tasks such as:

1. **User Authentication**: The script allows for user authentication using a GUI login prompt or command-line input.
2. **Encryption and Obfuscation**: The script provides encryption and obfuscation capabilities to secure sensitive data.
3. **Tool Download and Execution**: Vengence can download required tools, such as Nmap and Wireshark, and execute them for auditing purposes.
4. **Email and SMS Notifications**: The script can send email and SMS notifications for various events, such as the completion of an audit report.
5. **Payment Processing**: Vengence includes payment processing functionality to handle financial transactions related to the auditing process.
6. **Wiki and GitHub Repository Files Creation**: The script creates wiki and GitHub repository files for documentation purposes.
7. **Clean-up**: Vengence can clean up all created files and directories after use.

Vengence is a comprehensive tool that provides various functionalities for auditing and security testing. Its features make it useful for professionals in the cybersecurity industry or anyone who needs to perform audits and tests on networks and systems.

## Run

Run the Script With:

    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/ProjectZeroDays/Vengence/main/install.sh)"

    
