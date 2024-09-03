<?php
session_start();

if($_SERVER["REQUEST_METHOD"] === "POST"){
    include('Mail.php');

    $email = $_POST["email"];
    $message = $_POST["message"];
    $submit = $_POST["result_submit"];
    $subject = "ASSIGNMENT RESULT";
    // $from = $_SESSION["email"];
    $from = "oparaprosper79@gmail.com";



    if(isset($submit)){

        mail($email,$subject,$message,$from);

    }
}

?>