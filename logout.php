<?php
session_start();
include("includes/config.php");
$_SESSION['login']=="";
date_default_timezone_set('America/Mexico_City');
$ldate=date( 'd-m-Y h:i:s A', time () );
mysqli_query($con,"UPDATE registrodeusuario  SET logout = '$ldate' WHERE userEmail = '".$_SESSION['login']."' ORDER BY id DESC LIMIT 1");
session_unset();
$_SESSION['errmsg']="La sessión se ha cerrado";
?>
<script language="javascript">
document.location="index.php";
</script>
