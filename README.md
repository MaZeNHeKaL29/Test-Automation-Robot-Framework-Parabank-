# Test-Automation-Robot-Framework-Parabank

Automated test suite for the **Parabank** web application using **Robot Framework** and **SeleniumLibrary**.  
The project demonstrates best practices in UI test automation including modular design, reusable keywords, and clear documentation.

---

## Project Overview

This project automates the following scenarios:

- Negative Login Validation  
- User Registration and Auto Login  
- Logout and Re-Login  
- Create a New Savings Account  
- Loan Request and Loan Account Validation  

---

## Project Structure

```
Test-Automation-Robot-Framework-Parabank
│
├── tests
│   ├── negative_login.robot
│   ├── registration_and_login.robot
│   ├── logout_relogin.robot
│   ├── create_savings_account.robot
│   └── loan_request.robot
│
├── keywords
│   ├── login_keywords.robot
│   ├── registration_keywords.robot
│   ├── account_keywords.robot
│   └── loan_keywords.robot
│
├── resources
│   └── variables.robot
│
├── reports
│   ├── log.html
│   ├── report.html
│   └── output.xml
```

---

## Prerequisites

- Python 3.8 or higher  
- Google Chrome  
- ChromeDriver (matching Chrome version)  
- pip  

---

## Setup Instructions

### Clone Repository

```bash
git clone https://github.com/MaZeNHeKaL29/Test-Automation-Robot-Framework-Parabank-.git
cd Test-Automation-Robot-Framework-Parabank-
```

### Download python



### Install Dependencies

```bash
pip install robotframework
pip install robotframework-seleniumlibrary
```

## Running Tests

Run all tests:

```bash
robot tests
```

Run a single test file:

```bash
robot tests/negative_login.robot
```

---

## Reports

After execution:

- report.html – Summary
- log.html – Detailed logs
- output.xml – Execution data

Open report:

```bash
start report.html
```

---

## Test Coverage

| Scenario | Description |
|--------|-------------|
| Negative Login | Invalid login validation |
| Registration | Register user & auto login |
| Logout/Login | Validate logout & re-login |
| Account Creation | Create savings account |
| Loan Request | Validate loan approval |

---

## Best Practices

- Modular keyword design
- Explicit waits
- Suite variables for dependencies
- Clean documentation

---

## Author

**Mazen Hekal**  
Robot Framework Automation Project
