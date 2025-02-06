# Resident Registry Application

This is a simple web application for managing a basic resident registry system. It demonstrates the use of Flask and MySQL in a web application that could be part of a local government's standardized operations.

## Prerequisites

- Python 3.7+
- MySQL 5.7+
- pip (Python package manager)

## Setup

1. Clone the repository:
   ```
   git clone https://github.com/rayofhopejp/mysql-sample-app-with-flask
   cd mysql-sample-app-with-flask
   ```

2. Set up a virtual environment (optional but recommended):
   ```
   python3 -m venv venv
   source venv/bin/activate  # On Windows use `venv\Scripts\activate`
   ```

3. Install the required packages:
   ```
   pip install -r requirements.txt
   ```

4. Set up MySQL:
   - Ensure MySQL is installed and running on your system.
   - Set the following environment variables with your MySQL credentials:
     ```
     export MYSQL_ROOT_USER=your_mysql_username
     export MYSQL_ROOT_PASSWORD=your_mysql_password
     ```

5. Set up the database:
   ```
   chmod +x setup_database.sh
   ./setup_database.sh
   ```

6. Configure the application:
   Set the following environment variables for the Flask application:
   ```
   export MYSQL_HOST=localhost
   export MYSQL_USER=your_mysql_username
   export MYSQL_PASSWORD=your_mysql_password
   export MYSQL_DATABASE=resident_registry
   ```

## Running the Application

1. Start the Flask application:
   ```
   python app.py
   ```

2. Open a web browser and navigate to `http://localhost:5000` to access the application.

## Using the Application

- The main page displays a form to add new residents and a table of existing residents.
- To add a new resident, fill out the form with the resident's name, email, and address, then click "登録" (Register).
- To delete a resident, click the "削除" (Delete) button next to the resident's information in the table.

## Deployment Notes

- For production deployment, consider using a production-grade web server like Gunicorn or uWSGI instead of the built-in Flask development server.
- Ensure to set appropriate security measures, such as using HTTPS, setting secure cookies, and protecting against common web vulnerabilities.
- This application is a basic example and should be extended with proper authentication, authorization, and additional features for real-world use.

## License

This project is open-source and available under the MIT License.

## Contributing

Contributions to improve the application are welcome. Please feel free to submit a Pull Request.

## Support

If you encounter any problems or have any questions, please open an issue in the GitHub repository.