<?php
$host = 'localhost';
$dbname = 'school';
$username = 'root';
$password = '';

try {
    $conn = new PDO("mysql:host=$host;dbname=$dbname", $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    if ($_SERVER["REQUEST_METHOD"] == "POST") {
        $id = $_POST['id'];
        $passwordInput = $_POST['password'];

        $stmt = $conn->prepare("SELECT * FROM activity4 WHERE id = :id AND password = :password");
        $stmt->bindParam(':id', $id);
        $stmt->bindParam(':password', $passwordInput);
        $stmt->execute();

        if ($stmt->rowCount() > 0) {
            echo "<h1>Login Successful!</h1>";
            echo "<p>Welcome, User ID: " . htmlspecialchars($id) . "</p>";
        } else {
            echo "<h1>Login Failed</h1>";
            echo "<p>Invalid ID or password.</p>";
            echo "<p><a href='index.html'>Try again</a></p>";
        }
    } else {
        header("Location: index.html");
        exit();
    }
} catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}
?>
