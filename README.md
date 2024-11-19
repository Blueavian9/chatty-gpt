# 🤖 OpenAI C++ CLI Chat Application 🚀

## 📝 Overview

A C++ command-line chat application that interfaces with OpenAI's GPT models.

## 🛠️ Build Methods

### 1. Direct Compilation
```bash
# Install dependencies
sudo apt update
sudo apt install libcurl4-openssl-dev libjsoncpp-dev

# Compile the application
g++ -std=c++11 -o chatty chatty.cpp $(pkg-config --cflags --libs jsoncpp) -lcurl
```

### 2. Docker Build
```bash
# Build Docker image
docker build -t chatty-box .

# Run Docker container
docker run -it \
  -e OPENAI_API_KEY=your_openai_api_key \
  chatty-box
```

## 🔑 API Key Configuration

### Environment Variable
```bash
# Set API key (Linux/Mac)
export OPENAI_API_KEY="your_api_key_here"

# Set API key (Windows)
set OPENAI_API_KEY=your_api_key_here
```

### Docker Runtime Configuration
When using Docker, pass the API key as an environment variable:
```bash
docker run -e OPENAI_API_KEY=your_key_here chatty-box
```

## 🚀 Running the Application

### Direct Execution
```bash
# After compilation
./chatty
```

### Docker Execution
```bash
# Interactive mode
docker run -it -e OPENAI_API_KEY=your_key chatty-box
```

## 📋 Additional Configuration

### Changing GPT Model
Edit `main()` function and modify:
```cpp
std::string model = "gpt-4o-mini";  // Change model here
```

## 🛠️ Troubleshooting

- Verify API key is valid
- Check internet connectivity
- Ensure all dependencies are installed

## 🤝 Contributing

1. Fork repository
2. Create feature branch
3. Commit changes
4. Push to branch
5. Create pull request

## 📜 License

MIT License - see LICENSE file for details.
