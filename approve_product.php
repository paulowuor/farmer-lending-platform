<?php
// Connect to the database
$conn = new mysqli("localhost", "root", "", "farmer");

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Get the product ID from the query string
$orderId = $_GET["order_id"];

// Update the database to mark the product as approved
$sql = "UPDATE products SET status='approved' WHERE order_id=$orderId";
if ($conn->query($sql) === TRUE) {
    echo "Product approved successfully.";
} else {
    echo "Error updating product: " . $conn->error;
}

// Close the database connection
$conn->close();
?>
