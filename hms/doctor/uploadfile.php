<?php
session_start();
    define('DB_SERVER','localhost');
define('DB_USER','root');
define('DB_PASS' ,'');
define('DB_NAME', 'hms');
$con = mysqli_connect(DB_SERVER,DB_USER,DB_PASS,DB_NAME);
$dname=$_SESSION['dname'];
    if(!$con){
        die("can not connect with the server");
    }
    $message = '';
    if(isset($_POST['submit'])){
        $targetdire = "upload/";
        $filename = basename($_FILES['file']['name']);
        $path = $targetdire.$filename;

        $filetype = pathinfo($path,PATHINFO_EXTENSION);

        $filesize = ($_FILES['file']['size'])/1024;

        if (!empty($_FILES['file']['name'])) {

            $allowtype = array('docx', 'pdf', 'doc');

            if(in_array($filetype, $allowtype)){

                if(move_uploaded_file($_FILES['file']['tmp_name'], $path)){

                    $query = "insert into upload(file,type,size,Docname) values('".$path."','".$filetype."','".$filesize."','".$dname."')";
					//$query="insert into abc values ('2')";
                    $result = mysqli_query( $con,$query);
                    if($result){
                        $message = "<p>File Uploaded successfully...</p>";
                    }else {
                        $message = "File upload failed, please try again.".$path;
                    }
                }else {
                    $message = "Sorry, there was an error uploading your file.";
                }
            }else {
                $message = 'Sorry, Only doc,docx and PDF files are allowed to upload.';
            }
        }else {
            $message = 'Please select a file to upload.';
        }
    }

?>



<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>file uploading</title>
        <style media="screen">

            #upload {
                margin-top: 5%;
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 50%;

            }

            #upload td, #upload th {
                border: 1px solid #ddd;
                padding: 8px;
                text-align: center;
            }

            #upload tr:nth-child(even){background-color: #f2f2f2;}

            #upload tr:hover {background-color: #ddd;}

            #upload th {
                padding-top: 12px;
                padding-bottom: 12px;
                background-color: #4CAF50;
                color: white;
            }
        </style>
    </head>
    <body>
        <form action="uploadfile.php" method="post" enctype="multipart/form-data">
            <table id = "upload" align="center">
                <tr>
                    <th><label for="id">Select pdf/docx/doc file to upload: </label></th>
                </tr>
                <tr>
                    <td><input type="file" id="file" name="file"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="submit" value="Upload"></td>
                </tr>
                <tr>
                    <td><?=$message?></td>
                </tr>
            </table>
        </form>
    </body>
</html>
