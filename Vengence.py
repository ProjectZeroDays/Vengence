#!/usr/bin/env python3

import os
import subprocess
import shutil
import getpass
import tempfile
import urllib.request
import zipfile
from cryptography.fernet import Fernet
import sqlite3
import time
import smtplib
import requests
import json
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart
from tkinter import Tk, Label, Entry, Button, messagebox

# Constants
CONFIG_DIR = os.path.join(os.path.expanduser("~"), ".config", "audit_tool")
TOOLS_DIR = os.path.join(tempfile.gettempdir(), "tools")
DATABASE_PATH = os.path.join(CONFIG_DIR, 'users.db')
SECRET_KEY_PATH = os.path.join(CONFIG_DIR, "secret.key")
GIT_REPO_DIR = os.path.join(tempfile.gettempdir(), "audit-tool")
DOCS_DIR = os.path.join(GIT_REPO_DIR, "docs")

# Helper function to obfuscate sensitive information
def obfuscate(text):
    return ''.join(chr(ord(c) + 2) for c in text)

# Helper function to deobfuscate sensitive information
def deobfuscate(text):
    return ''.join(chr(ord(c) - 2) for c in text)

# Encryption key generation and saving
def generate_key():
    key = Fernet.generate_key()
    with open(SECRET_KEY_PATH, "wb") as key_file:
        key_file.write(key)

def load_key():
    return open(SECRET_KEY_PATH, "rb").read()

def encrypt_message(message):
    key = load_key()
    f = Fernet(key)
    encrypted_message = f.encrypt(message.encode())
    return encrypted_message

def decrypt_message(encrypted_message):
    key = load_key()
    f = Fernet(key)
    decrypted_message = f.decrypt(encrypted_message).decode()
    return decrypted_message

# Database setup
def setup_database():
    os.makedirs(CONFIG_DIR, exist_ok=True)
    conn = sqlite3.connect(DATABASE_PATH)
    c = conn.cursor()
    c.execute('''CREATE TABLE IF NOT EXISTS users (username TEXT, password TEXT)''')
    c.execute('''CREATE TABLE IF NOT EXISTS api_keys (username TEXT, api_key TEXT)''')
    conn.commit()
    conn.close()

# Add admin user
def add_admin_user():
    admin_user = "projectzero"
    admin_pass = encrypt_message("R0om2fb9!")
    conn = sqlite3.connect(DATABASE_PATH)
    c = conn.cursor()
    c.execute("INSERT INTO users (username, password) VALUES (?, ?)", (admin_user, admin_pass))
    conn.commit()
    conn.close()

# Authentication function
def authenticate(username, password):
    conn = sqlite3.connect(DATABASE_PATH)
    c = conn.cursor()
    c.execute("SELECT password FROM users WHERE username=?", (username,))
    result = c.fetchone()
    conn.close()
    if result and decrypt_message(result[0]) == password:
        return True
    return False

# Function to send email notification
def send_email(subject, body, to_email):
    from_email = "your_email@example.com"
    from_password = "your_password"
    msg = MIMEMultipart()
    msg["From"] = from_email
    msg["To"] = to_email
    msg["Subject"] = subject
    msg.attach(MIMEText(body, "plain"))
    server = smtplib.SMTP("smtp.example.com", 587)
    server.starttls()
    server.login(from_email, from_password)
    server.sendmail(from_email, to_email, msg.as_string())
    server.quit()

# Function to send SMS notification
def send_sms(message, to_number):
    api_url = "https://sms-api.example.com/send"
    api_key = "your_sms_api_key"
    data = {
        "to": to_number,
        "message": message,
        "api_key": api_key
    }
    response = requests.post(api_url, data=data)
    return response.status_code == 200

# Function to handle payment processing
def process_payment(amount):
    payment_url = "https://payment-gateway.example.com/process"
    data = {
        "amount": amount,
        "api_key": "your_payment_api_key"
    }
    response = requests.post(payment_url, data=data)
    return response.json()

# GUI for user authentication
def login_gui():
    def on_login():
        username = username_entry.get()
        password = password_entry.get()
        if authenticate(username, password):
            messagebox.showinfo("Login Successful", "Welcome!")
            root.destroy()
        else:
            messagebox.showerror("Login Failed", "Invalid credentials!")

    root = Tk()
    root.title("Login")
    root.geometry("300x150")

    Label(root, text="Username").pack(pady=5)
    username_entry = Entry(root)
    username_entry.pack(pady=5)

    Label(root, text="Password").pack(pady=5)
    password_entry = Entry(root, show="*")
    password_entry.pack(pady=5)

    Button(root, text="Login", command=on_login).pack(pady=10)

    root.mainloop()

# Main script functionalities
def create_config_files():
    os.makedirs(CONFIG_DIR, exist_ok=True)
    config_file = os.path.join(CONFIG_DIR, "config.txt")
    with open(config_file, "w") as f:
        f.write("Configuration settings for audit tool")

def add_to_path():
    os.environ["PATH"] += os.pathsep + CONFIG_DIR

def remove_from_path():
    os.environ["PATH"] = os.environ["PATH"].replace(os.pathsep + CONFIG_DIR, "")

def download_tools():
    os.makedirs(TOOLS_DIR, exist_ok=True)
    
    tools = {
        "nmap": "https://nmap.org/dist/nmap-7.91.zip",
        "wireshark": "https://2.na.dl.wireshark.org/win64/Wireshark-win64-3.4.0.zip"
    }
    
    for tool, url in tools.items():
        zip_path = os.path.join(TOOLS_DIR, f"{tool}.zip")
        urllib.request.urlretrieve(url, zip_path)
        with zipfile.ZipFile(zip_path, 'r') as zip_ref:
            zip_ref.extractall(TOOLS_DIR)
        os.remove(zip_path)

def run_Vengence():
    nmap_path = os.path.join(TOOLS_DIR, "nmap-7.91", "nmap.exe")
    wireshark_path = os.path.join(TOOLS_DIR, "Wireshark-win64-3.4.0", "Wireshark.exe")
    
    if os.path.exists(nmap_path):
        subprocess.run([nmap_path, "-sP", "192.168.1.0/24"], check=True)
    if os.path.exists(wireshark_path):
        subprocess.run([wireshark_path, "-D"], check=True)

def send_audit_report():
    pdf_report = os.path.join(tempfile.gettempdir(), "audit_report.pdf")
    with open(pdf_report, "wb") as f:
        f.write(b"Audit Report Content")
    send_email("Audit Report", "Please find the attached audit report.", "projectzerodays@gmail.com")
    send_sms("Audit completed and report sent.", "+12028553904")

# Create wiki and GitHub repository files
def create_wiki_files():
    os.makedirs(DOCS_DIR, exist_ok=True)

    mkdocs_yml = """\
site_name: Audit Tool Documentation
nav:
    - Home: index.md
    - Usage: usage.md
    - Configuration: configuration.md
    - API Keys: api_keys.md
    - Troubleshooting: troubleshooting.md
theme: readthedocs
"""
    with open(os.path.join(GIT_REPO_DIR, "mkdocs.yml"), "w") as f:
        f.write(mkdocs_yml)

    index_md = """\
# Welcome to the Audit Tool Documentation

This documentation provides a comprehensive guide to using the Audit Tool script. 

## Features

- User Authentication
- Encryption and Obfuscation
- Tool Download and Execution
- Email and SMS Notifications
- Payment Processing

## Quick Start

1. **Clone the repository:**
    ```bash
    git clone https://github.com/projectzerodays/Vengence.git
    ```

2. **Navigate to the directory:**
    ```bash
    cd Vengence
    ```

3. **Install dependencies:**
    ```bash
    pip install -r requirements.txt
    ```

4. **Run the script:**
    ```bash
    python Vengence.py
    ```

5. **View Help:**
    ```bash
    python Vengence.py --help
    ```

6. **To generate the encryption key:**
    ```bash
    python Vengence.py --generate-key
    ```
    
7. **To set up the database and add an admin user:**
    ```bash
    python Vengence.py --setup-db
    ```
    
8. **To show the login GUI:**
    ```bash
    python Vengence.py --login
    ```
    
9. **To create configuration files:**
    ```bash
    python Vengence.py --create-config
    ```
    
10. **To add the tool directory to the system PATH:**
    ```bash
    python Vengence.py --add-path
    ```
    
11. **To download the required tools:**
    ```bash
    python Vengence.py --download-tools
    ```
    
12. **To run the Vengence:**
    ```bash
    python Vengence.py --run-tools
    ```
    
13. **To send the audit report via email and SMS:**
    ```bash
    python Vengence.py --send-report
    ```
    
14. ***To create the wiki and GitHub repository files:***
    ```bash
    python Vengence.py --create-wiki
    ```
    
15. ***To clean up all created files and directories:***
    ```bash
    python Vengence.py --clean-up
    ```

For detailed instructions, refer to the sections in the navigation bar.
"""
    with open(os.path.join(DOCS_DIR, "index.md"), "w") as f:
        f.write(index_md)

    # Create other markdown files
    for filename in ["usage.md", "configuration.md", "api_keys.md", "troubleshooting.md"]:
        with open(os.path.join(DOCS_DIR, filename), "w") as f:
            f.write(f"# {filename.split('.')[0].capitalize()}")

    # Create GitHub workflow file
    workflow_dir = os.path.join(GIT_REPO_DIR, ".github", "workflows")
    os.makedirs(workflow_dir, exist_ok=True)

    main_yml = """\
name: CI

on:
  push:
    branches: [ main ]
  pull_request:
    branches: [ main ]

jobs:
  build:

    runs-on: ubuntu-latest

    steps:
    - uses: actions/checkout@v2
    - name: Set up Python
      uses: actions/setup-python@v2
      with:
        python-version: '3.x'
    - name: Install dependencies
      run: |
        python -m pip install --upgrade pip
        pip install -r requirements.txt
    - name: Run tests
      run: |
        # Add your test commands here
        python -m unittest discover tests
"""
    with open(os.path.join(workflow_dir, "main.yml"), "w") as f:
        f.write(main_yml)

def clean_up():
    # Remove created files and directories
    if os.path.exists(CONFIG_DIR):
        shutil.rmtree(CONFIG_DIR)
    if os.path.exists(TOOLS_DIR):
        shutil.rmtree(TOOLS_DIR)
    if os.path.exists(GIT_REPO_DIR):
        shutil.rmtree(GIT_REPO_DIR)

# Help section
def print_help():
    help_text = """
    Usage: python Vengence.py [OPTIONS]

    Options:
      --help                Show this help message and exit
      --generate-key        Generate encryption key
      --setup-db            Setup database and add admin user
      --login               Show login GUI
      --create-config       Create configuration files
      --add-path            Add tool directory to system PATH
      --remove-path         Remove tool directory from system PATH
      --download-tools      Download required tools
      --run-tools           Run Vengence
      --send-report         Send audit report via email and SMS
      --create-wiki         Create wiki and GitHub repository files
      --clean-up            Remove all created files and clean up traces
    """
    print(help_text)

# Main function
def main():
    import sys
    if "--help" in sys.argv:
        print_help()
    elif "--generate-key" in sys.argv:
        generate_key()
    elif "--setup-db" in sys.argv:
        setup_database()
        add_admin_user()
    elif "--login" in sys.argv:
        login_gui()
    elif "--create-config" in sys.argv:
        create_config_files()
    elif "--add-path" in sys.argv:
        add_to_path()
    elif "--remove-path" in sys.argv:
        remove_from_path()
    elif "--download-tools" in sys.argv:
        download_tools()
    elif "--run-tools" in sys.argv:
        run_Vengence()
    elif "--send-report" in sys.argv:
        send_audit_report()
    elif "--create-wiki" in sys.argv:
        create_wiki_files()
    elif "--clean-up" in sys.argv:
        clean_up()
    else:
        print_help()

if __name__ == "__main__":
    main()
