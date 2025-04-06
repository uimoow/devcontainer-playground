# devcontainer-playground

## Flask + MySQL with Docker Compose

This branch enhances:  
Introducing Docker Compose to manage multi-container environments

- Adding a MySQL database container
- Using an external .env file for local environment variable management
- Installing necessary MySQL client dependencies in the Flask app container

The Devcontainer named `playground-flask-mysql`.
This is a realistic setup for developing and testing full-stack web apps locally.

### Notes

- Create a .env file locally only with database credentials:

    ```env
    DB_HOST=db
    DB_USER=your_user
    DB_PASSWORD=your_pass
    DB_NAME=your_db
    MYSQL_ROOT_PASSWORD=root
    MYSQL_USER=your_user
    MYSQL_PASSWORD=your_pass
    MYSQL_DATABASE=your_db
    DB_TIMEZONE=Asia/Tokyo
    ```
- This file is not committed to keep secrets safe.

### How to Run

#### Run Flask Application + MySQL

1. Open the terminal inside the container and run:
    ```bash
    flask run --host=0.0.0.0 --port=5000
    ```

2. Open a browser and go to [http://localhost:5000](http://localhost:5000) to see "Hello, World with flask + MySQL!".

3. Open a new terminal and run the following commands to get the users from the database:
    ```bash
    curl -X GET http://localhost:5000/getUsers
    ```

    Example Outputs:
    ```json
    {"users":[{"id":1,"name":"Alice"},{"id":2,"name":"Bob"},{"id":3,"name":"Charlie"}]}
    ```

#### Running Pytest

1. Inside the container, run:
    ```bash
    pytest
    ```

2. If the test passes, you should see:
    ```bash
    === test session starts =======================
    collected 1 item

    src/test_app.py .                        [100%]
    === 1 passed in 0.12 seconds ==================
    ```