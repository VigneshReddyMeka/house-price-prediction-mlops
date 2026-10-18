
const form = document.getElementById("prediction-form");
const result = document.getElementById("result");
const button = document.getElementById("predict-button");

form.addEventListener("submit", async (event) => {
    event.preventDefault();

    const payload = {
        area: Number(document.getElementById("area").value),
        bedrooms: Number(document.getElementById("bedrooms").value),
        bathrooms: Number(document.getElementById("bathrooms").value),
        age: Number(document.getElementById("age").value)
    };

    button.disabled = true;
    result.textContent = "Predicting house price...";

    try {
        const response = await fetch("/predict", {
            method: "POST",
            headers: {
                "Content-Type": "application/json"
            },
            body: JSON.stringify(payload)
        });

        const data = await response.json();

        if (!response.ok) {
            throw new Error(
                typeof data.detail === "string"
                    ? data.detail
                    : JSON.stringify(data.detail || data)
            );
        }

        const price = Number(data.predicted_price);

        if (!Number.isFinite(price)) {
            throw new Error("The API returned an invalid prediction.");
        }

        result.textContent =
            "Estimated House Price: " +
            price.toLocaleString("en-IN", {
                style: "currency",
                currency: "INR",
                maximumFractionDigits: 2
            });

    } catch (error) {
        result.textContent = "Prediction failed: " + error.message;
    } finally {
        button.disabled = false;
    }
});

