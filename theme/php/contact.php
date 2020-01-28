<?php
	
	$name = trim($_POST['name']);
	$email = $_POST['email'];
	$subject = $_POST['subject'];
	$message = $_POST['message'];
	
	$site_owners_email = 'your@mail.com'; // Replace this with your own email address
	$site_owners_name = 'uxbarn'; // Replace with your name
		
	try {
		require_once('PHPMailer/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->CharSet = 'UTF-8';
		
		$mail->From = $email;
		$mail->FromName = $name;
		$mail->Subject = "[Lamoon] ".$subject;
		$mail->AddAddress($site_owners_email, $site_owners_name);
		$mail->Body = $message;
		
		$mail->Mailer = "smtp";
		$mail->Host = "smtp.yoursite.com"; // Replace with your SMTP server address
		//$mail->Port = 587;
		//$mail->SMTPSecure = "tls"; 
		
		$mail->SMTPAuth = true; // Turn on SMTP authentication
		$mail->Username = "user@smtp.com"; // SMTP username
		$mail->Password = "yourpassword"; // SMTP password
		
		if($mail->Send()) {
			echo "true";
		} else {
			echo "Error sending: " . $mail->ErrorInfo;
		}
		
	} catch (Exception $e) {
		echo $e;
	}

?>