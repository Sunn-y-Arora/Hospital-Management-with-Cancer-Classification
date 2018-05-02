<?php
$message = "";
if(isset($_POST['reset'])){
    header('Location: network.php');
}
elseif(isset($_POST['submit']) && !empty($_POST['w1']) && !empty($_POST['w2']) && !empty($_POST['w3']) && !empty($_POST['w4']) && !empty($_POST['w5']) && !empty($_POST['w6']) && !empty($_POST['w7']) && !empty($_POST['w8']) && !empty($_POST['w9'])){
// w1 Weight	1.6796818812446186
// w2 Weight	1.8610267943060772
// w3 Weight	1.8059482084618208
// w4 Weight	0.9267825246357847
// w5 Weight	0.8826127485184864
// w6 Weight	2.583913486347142
// w7 Weight	1.2879503827506151
// w8 Weight	1.412600363838915
// w9 Weight	1.6007762437963111
//
// b bias	-3.958916845403134
//
//
// w11 Weight	-5.586984226764622
// w12 bias	3.1755116889548107
// w21 Weight	5.5079614232084255
// w22  Wbias	-3.1345899812445746
    $w1 = $_POST['w1'];
    $w2 = $_POST['w2'];
    $w3 = $_POST['w3'];
    $w4 = $_POST['w4'];
    $w5 = $_POST['w5'];
    $w6 = $_POST['w6'];
    $w7 = $_POST['w7'];
    $w8 = $_POST['w8'];
    $w9 = $_POST['w9'];
    // $b1 = $_POST['b1'];
    // $b2 = $_POST['b2'];
    // $b3 = $_POST['b3'];
    if($w1>1 || $w1<0 || $w2>1 || $w2<0 || $w3>1 || $w3<0 || $w4>1 || $w4<0 || $w5>1 || $w5<0 || $w6>1 || $w6<0 || $w7>1 || $w7<0 || $w8>1 || $w8<0 || $w9>1 || $w9<0 ){
        $message = "Weights should be in the range of [0,1]";
    }else{
        $layer2_input = $w1*(1.6796818812446186) + $w2*(1.8610267943060772) + $w3*(1.8059482084618208) +  $w4*(0.9267825246357847) + $w5*(0.8826127485184864) + $w6*(2.583913486347142) + $w7*(1.2879503827506151) + $w8*(1.412600363838915) + $w9*(1.6007762437963111) -3.958916845403134;
        $output1 = (1)/(1+exp((-1)*$layer2_input));

        $layer3_1 = $output1*(-5.586984226764622) + 3.1755116889548107;
        $layer3_2 = $output1*(5.5079614232084255) - 3.1345899812445746;
        $output3_1 = (1)/(1+exp((-1)*$layer3_1));
        $output3_2 = (1)/(1+exp((-1)*$layer3_2));
        if($output3_1>$output3_2)
            $message = "Type of cancer: Benign";
        else {
            $message = "Type of cancer: Malignant";
        }
    }
    
}elseif(isset($_POST['submit'])){
    $message = 'Fields can not be empty';
}else{
    $message = '';
}

?>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset="utf-8">
        <!-- <meta http-equiv="refresh" content="0; url="http://localhost/hospital_osp/network.php" /> -->
        <title>Network Form</title>
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
            #output{
                font-size: 20px;
                font-weight: bold;
                font-family: fantasy;
                font-style: normal;
                color: red;
            }
        </style>
    </head>
    <body>
	<h2 style="text-align:center"> Breast Cancer Prediction using Multilayer Perceptron </h2>
        <form class="network" action="network.php" method="post">
            <table id="upload" align="center">
                <?php
                    $formsubmitted = '';
                    if(isset($_POST['submit']) && !empty($_POST['w1']) && !empty($_POST['w2']) && !empty($_POST['w3']) && !empty($_POST['w4']) && !empty($_POST['w5']) && !empty($_POST['w6']) && !empty($_POST['w7']) && !empty($_POST['w8']) && !empty($_POST['w9'])){
                        $formsubmitted = 1;
                    }else {
                        $formsubmitted = 0;
                    }
                ?>
                <tr>
                    <th>Attribute</th>
                    <th>Weights</th>
                </tr>
                <tr>
                    <td>Clump Thickness</td>
                    <td><input type="text" name="w1" value="<?php
                    if($formsubmitted >0){echo $w1;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Uniformity of Cell Size</td>
                    <td><input type="text" name="w2" value="<?php
                    if($formsubmitted >0){echo $w2;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Uniformity of Cell Shape</td>
                    <td><input type="text" name="w3" value="<?php
                    if($formsubmitted >0){echo $w3;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Marginal Adhesion</td>
                    <td><input type="text" name="w4" value="<?php
                    if($formsubmitted >0){echo $w4;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Single Epithelial Cell Size</td>
                    <td><input type="text" name="w5" value="<?php
                    if($formsubmitted >0){echo $w5;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Bare Nuclei</td>
                    <td><input type="text" name="w6" value="<?php
                    if($formsubmitted >0){echo $w6;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Bland Chromatin</td>
                    <td><input type="text" name="w7" value="<?php
                    if($formsubmitted >0){echo $w7;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Normal Nucleoli</td>
                    <td><input type="text" name="w8" value="<?php
                    if($formsubmitted >0){echo $w8;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <tr>
                    <td>Mitoses</td>
                    <td><input type="text" name="w9" value="<?php
                    if($formsubmitted >0){echo $w9;}
                    else{echo '';}
                    ?>"></td>
                </tr>
                <!-- <tr>
                    <td>b</td>
                    <td><input type="text" name="bias" value=""></td>
                </tr> -->
                <tr>

                    <td><input type="submit" name="submit" value="Submit"></td>
                    <td><input type="submit" name="reset" value="Reset"></td>

                </tr>
                <tr>
                    <td colspan="2"><p id="output"><?php
                    echo $message;

                    ?></p></td>
                </tr>
            </table>
        </form>
    </body>
</html>
