<?php
include "config.php";

?>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <title>view</title>
        <style media="screen">
        #outer, #upload {
            margin-top: 5%;
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 50%;

        }
        #upload{
            margin-top: 1%;
        }
        #outer th, #upload td, #upload th {
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
        #outer th {
            padding-top: 12px;
            padding-bottom: 12px;
            background-color: #191970;
            color: white;
        }
        </style>
    </head>
    <body>
        <table id="outer" align="center">
            <tr>
                <th colspan="4">File Uploading With PHP and MYSQL</th>
            </tr>
            <table id="upload" align="center">
                <!-- <tr> -->
                    <!-- <td colspan="4">File Uploading with PHP and MYSql</td> -->
                <!-- </tr> -->
                <tr>
                    <th>File Name</th>
                    <th>File Type</th>
                    <th>File Size(KB)</th>
                    <th>View File</th>
                </tr>
                <?php
                    $query = "select *from upload order by id";
                    $result=mysql_query($query,$con);
                    while ($row = mysql_fetch_array($result)) {
                        echo "<tr>";
                        echo    "<td>".$row['file']."</td>";
                        echo    "<td>".$row['type']."</td>";
                        echo    "<td>".$row['size']."</td>";
                        echo    "<td><a href='".$row['file']."' target='_blank'>View File</a></td>";
                        echo "</tr>";
                    }
                ?>
                <tr>
                    <td colspan="4"><a href="uploadfile.php">....Upload new files....</a></td>
                </tr>
            </table>

        </table>

    </body>
</html>
