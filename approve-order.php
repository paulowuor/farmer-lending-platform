<?php
// Connect to the database
$conn = mysqli_connect('localhost', 'root', '', 'farmer');

// Check for errors
if (!$conn) {
  die('Connection failed: ' . mysqli_connect_error());
}

// Get the order ID and status from the AJAX request
$orderId = $_POST['order_id'];
$status = $_POST['status'];

// Update the order status in the database
$query = "UPDATE orders SET status = '$status' WHERE id = $orderId";
$result = mysqli_query($conn, $query);

// Check for errors
if (!$result) {
  die('Error updating order status: ' . mysqli_error($conn));
}

// Close the database connection
mysqli_close($conn);
?>

