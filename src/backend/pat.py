from flask import Flask, request, jsonify
import sqlite3
from flask_cors import CORS

app = Flask(__name__)
CORS(app)  # Allow frontend to interact with this backend

@app.route('/get_treatment', methods=['GET'])
def get_treatment():
    disease_name = request.args.get('disease_name')
    
    if not disease_name:
        return jsonify({"error": "Please provide a disease name."}), 400

    try:
        with sqlite3.connect('diseases.db') as conn:
            cursor = conn.cursor()
            cursor.execute("SELECT nutrient_food_medicine FROM diseases WHERE disease_name = ?", (disease_name,))
            result = cursor.fetchone()

        if result:
            return jsonify({"treatment": result[0]}), 200
        else:
            return jsonify({"error": f"No treatment found for {disease_name}."}), 404

    except sqlite3.Error as e:
        print(f"Database error: {e}")
        return jsonify({"error": "An internal server error occurred."}), 500

if __name__ == "__main__":
    app.run(host="127.0.0.1", port=5000, debug=True)
