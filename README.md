# 🤖 OpenAI C++ CLI Chat Application 🚀

## 📝 Overview

A C++ command-line chat application that interfaces with OpenAI's GPT models, providing an interactive CLI for conversational AI interactions.

## ✨ Features

- 🌐 Connects to OpenAI's GPT models (default: gpt-4o-mini)
- 💬 Interactive chat session with conversation history
- 🔐 Secure API key management via environment variables
- 🛡️ Error handling for API requests and JSON parsing

## 🛠️ Prerequisites

### System Requirements
- C++ compiler supporting C++11 or later
- Linux/macOS environment

### Required Libraries
- libcurl (HTTP requests)
- jsoncpp (JSON parsing)

## 🚦 Installation

### 1. Dependencies Installation

#### On Ubuntu/Debian:
```bash
sudo apt update
sudo apt install libcurl4-openssl-dev libjsoncpp-dev
```

#### On macOS (using Homebrew):
```bash
brew install curl jsoncpp
```

### 2. Clone the Repository
```bash
git clone https://github.com/yourusername/openai-cpp-chat.git
cd openai-cpp-chat
```

## 🔑 API Key Setup

Set your OpenAI API key as an environment variable:

### Linux/Mac:
```bash
export OPENAI_API_KEY="your_api_key_here"
```

### Windows:
```cmd
set OPENAI_API_KEY=your_api_key_here
```

## 🏗️ Build Instructions

### Compile the Application
```bash
g++ -std=c++11 -o chatty chatty.cpp $(pkg-config --cflags --libs jsoncpp) -lcurl
```

## 🚀 Running the Application
```bash
./chatty
```

## 💡 Usage Tips

- Type your messages at the prompt
- The application maintains conversation context
- Type 'exit' to end the chat session

## 🛠️ Troubleshooting

- Ensure API key is correctly set
- Verify all dependencies are installed
- Check library versions compatibility

## 📋 Supported Models

- Default: `gpt-4o-mini`
- Easily changeable in source code

## 🤝 Contributing

Contributions welcome! Please submit pull requests or open issues.

## 📜 License

MIT License - see LICENSE file for details.

## 🙌 Acknowledgments

- OpenAI for their powerful API
- libcurl and jsoncpp library developers
