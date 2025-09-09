# Use NVIDIA's PyTorch image with CUDA support
FROM pytorch/pytorch:latest

# Set working directory in container
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY ./app /app

# Run main.py when container launches
CMD ["python", "main.py"]
