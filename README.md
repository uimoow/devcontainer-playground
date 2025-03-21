# Run Flask Application + MySQL

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

# Running Pytest

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