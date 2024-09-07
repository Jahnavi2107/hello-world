from flask import Flask, jsonify
import requests

app = Flask(__name__)

@app.route('/hello-world', methods=['GET'])
def hello_world():
    try:
        hello_response = requests.get('http://127.0.0.1:55105/hello')
        hello_response.raise_for_status()
        world_response = requests.get('http://127.0.0.1:55114/world')
        world_response.raise_for_status()
        
        hello_message = hello_response.text
        world_message = world_response.text
        
  return f"{hello_message} {world_message}"
    
    except requests.RequestException as e:
        return f"Error: {e}", 500

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5002)


