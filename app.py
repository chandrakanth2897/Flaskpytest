from flask import Flask, render_template, request

app = Flask(__name__)

@app.route('/')
def home():
    return render_template('home.html')

@app.route('/result', methods=['POST'])
def result():
    message = request.form['message']
    return render_template('result.html', message=message)

if __name__ == '__main__':
    app.run(debug=True)
