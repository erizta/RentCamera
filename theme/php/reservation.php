<?php
	
	// Customer Info
	$firstname = $_POST['firstname'];
	$lastname = $_POST['lastname'];
	$address = $_POST['address'];
	$city = $_POST['city'];
	$country = $_POST['country'];
	$phone = $_POST['phone'];
	$email = $_POST['email'];
	
	// Reservation Info
	$roomType = $_POST['roomType'];
	$checkin = $_POST['checkin'];
	$checkout = $_POST['checkout'];
	$roomamt = $_POST['roomamt'];
	$extrabed = $_POST['extrabed'];
	$adultamt = $_POST['adultamt'];
	$childrenamt = $_POST['childrenamt'];
	$payment = $_POST['payment'];
	$notebox = $_POST['notebox'];
	
	// Email Message
	$message = "<h2>Customer Info</h2>";
	$message .= "<strong>First Name:</strong> ".$firstname."<br/>";
	$message .= "<strong>Last Name:</strong> ".$lastname."<br/>";
	$message .= "<strong>Address:</strong> ".$address."<br/>";
	$message .= "<strong>City:</strong> ".$city."<br/>";
	$message .= "<strong>Country:</strong> ".$country."<br/>";
	$message .= "<strong>Phone:</strong> ".$phone."<br/>";
	$message .= "<strong>Email:</strong> ".$email."<br/><br/><br/>";
	$message .= "<h2>Reservation Info</h2>";
	$message .= "<strong>Room Type:</strong> ".$roomType."<br/>";
	$message .= "<strong>Check In:</strong> ".$checkin."<br/>";
	$message .= "<strong>Check Out:</strong> ".$checkout."<br/>";
	$message .= "<strong>No. of Rooms:</strong> ".$roomamt."<br/>";
	$message .= "<strong>Extra Bed:</strong> ".$extrabed."<br/>";
	$message .= "<strong>Adults:</strong> ".$adultamt."<br/>";
	$message .= "<strong>Children:</strong> ".$childrenamt."<br/>";
	$message .= "<strong>Payment:</strong> ".$payment."<br/>";
	$message .= "<strong>Note:</strong> ".$notebox."<br/>";
		
	$site_owners_email = 'your@mail.com'; // Replace this with your own email address
	$site_owners_name = 'uxbarn'; // Replace with your name
	
	try {
		require_once('PHPMailer/class.phpmailer.php');
		$mail = new PHPMailer();
		$mail->CharSet = 'UTF-8';
		$mail->IsHTML(true);
		
		$mail->From = $email;
		$mail->FromName = $firstname." ".$lastname;
		$mail->Subject = "[Reservation] From ".$firstname." ".$lastname;
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