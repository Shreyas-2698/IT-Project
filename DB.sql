<?php
$db_host="localhost";
$db_user="root";
$db_password="tiger";
$db_name="shreyas";
/*
echo $db_host."<br/>";
echo $db_user."<br/>";
echo $db_password."<br/>";
echo $db_name."<br/>";
*/
$dbh = mysqli_connect($db_host,$db_user,$db_password,$db_name) or die("Error");
//echo "Successfully Connected"."<br/>" ;
$query = "select * from cr";
$result = mysqli_query($dbh,$query) or die("Error querying the database");
echo '<form id="myform">';
while($row=mysqli_fetch_array($result,MYSQLI_ASSOC))
{
//$row=mysqli_fetch_array($result,MYSQLI_ASSOC)."<br/>";
echo '<input type="radio" name="candidate" id="'.$row['ID'].'" value="'.$row['Name'].'"/></input>';
echo $row['Name'].$row['ID']."<br/>";
//print_r($row);
}
echo '</form>';
?>

