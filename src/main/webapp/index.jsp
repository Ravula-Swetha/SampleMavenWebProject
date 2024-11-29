<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Calculator</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f9f9f9;
            margin: 0;
            padding: 20px;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            min-height: 100vh;
        }

        .calculator {
            background: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            max-width: 300px;
            text-align: center;
        }

        h2 {
            margin-bottom: 10px;
            color: #333;
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-size: 14px;
            color: #555;
        }

        input, select, button {
            width: 100%;
            padding: 8px;
            margin: 5px 0 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        button {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
            font-size: 16px;
        }

        button:hover {
            background-color: #45a049;
        }

        .result {
            font-size: 18px;
            font-weight: bold;
            color: #333;
        }
    </style>
</head>
<body>
    <div class="calculator">
        <h2>Enhanced Calculator</h2>
        <form id="calculatorForm">
            <label for="firstNumber">Enter First Number:</label>
            <input id="firstNumber" type="number" required>

            <label for="secondNumber">Enter Second Number:</label>
            <input id="secondNumber" type="number" required>

            <label for="operation">Select Operation:</label>
            <select id="operation">
                <option value="+">Addition</option>
                <option value="-">Subtraction</option>
                <option value="*">Multiplication</option>
                <option value="/">Division</option>
            </select>

            <button type="submit">Calculate</button>
        </form>
        <p class="result" id="result"></p>
    </div>

    <script>
        document.getElementById("calculatorForm").addEventListener("submit", function(event) {
            event.preventDefault(); // Prevent form submission and page reload

            const a = parseFloat(document.getElementById("firstNumber").value);
            const b = parseFloat(document.getElementById("secondNumber").value);
            const operation = document.getElementById("operation").value;
            let result;

            if (isNaN(a) || isNaN(b)) {
                result = "Please enter valid numbers.";
            } else {
                switch (operation) {
                    case "+":
                        result = a + b;
                        break;
                    case "-":
                        result = a - b;
                        break;
                    case "*":
                        result = a * b;
                        break;
                    case "/":
                        result = b !== 0 ? (a / b).toFixed(2) : "Division by zero is not allowed.";
                        break;
                    default:
                        result = "Invalid operation.";
                }
            }

            document.getElementById("result").textContent = `Result: ${result}`;
        });
    </script>
</body>
</html>
