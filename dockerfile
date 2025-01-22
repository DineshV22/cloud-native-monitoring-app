# Step 1: Use the official Python image
FROM python:3.9-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the requirements.txt file to the container
COPY requirements.txt .

# Step 4: Install the dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Step 5: Copy the rest of the application files
COPY . .

# Set environment variable to tell Flask to run on all interfaces
ENV FLASK_RUN_HOST=0.0.0.0

# Step 6: Expose the port on which the app will run
EXPOSE 5000

# Step 7: Define the command to run the app
CMD ["flask", "run"]
