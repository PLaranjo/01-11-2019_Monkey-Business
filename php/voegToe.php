<html>

<head> </head>

<body>
  <form method="post" action="process.php">
    Species :
    <input type="text" name="soort" placeholder="Enter Your species" /><br />

    <select name="leefgebied" id="leefgebied">


    </select>
    <br>
    <input type="submit" value="Submit" />
  </form>
</body>

</html>

<?php
// connectmet database
$dbc = mysqli_connect('localhost', 'root', '', 'apen') or die('ERROR CONNECTING TO DATABSE');

// query om leefgebied optehalen
$query = "SELECT omschrijving FROM leefgebied";

// query om leefgebied optehalen uitevoeren
$result = mysqli_query($dbc, $query) or die('ERROR QUERYING leefgebied');
