# Run Flask Application

1. Open the terminal inside the container and run:
    ```bash
    flask run --host=0.0.0.0
    ```

2. Open a browser and go to http://localhost:5000 to see "Hello, World!".

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
