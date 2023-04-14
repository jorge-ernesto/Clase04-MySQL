<?php

#conexion
$cnx=mysqli_connect('localhost', 'root', '', 'php1g10', 3306);
mysqli_query($cnx, 'set names utf8');

# preguntar
$sql="select * from agenda";

# ejecutando la consulta
$caja=mysqli_query($cnx, $sql);

/*
echo "<pre>";
echo "Fila1 : mysqli_fetch_row <br>"; //Retorna indice numerico
$fila1=mysqli_fetch_row($caja);
var_dump($fila1);

echo "Fila2 : mysqli_fetch_assoc <br>"; //Retorna indice asociativo
$fila2=mysqli_fetch_assoc($caja);
var_dump($fila2);

echo "Fila3 : mysqli_fetch_array <br>"; //Retorna indice numerico y asociativo
$fila3=mysqli_fetch_array($caja);
var_dump($fila3);
echo "</pre>";
*/

echo "Cantidad de Registros: " . mysqli_num_rows($caja);
echo "<br>";

# pasar la caja a una estructura
while ($fila=mysqli_fetch_assoc($caja)) {
    $datos[]=$fila;
}

//echo "<pre>";
//var_dump($datos);
//echo "</pre>";
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Demostracion</title>
</head>

<body>
    <table border=1>
        <thead>
            <tr bgcolor="pink">
                <td>ID</td>
                <td>PATERNO</td>
                <td>MATERNO</td>
                <td>NOMBRE</td>
                <td>CUMPLE</td>
                <td>ESTADO</td>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($datos as $x) {?>
            <tr>
                <td><?= $x['id']  ?></td>
                <td><?= $x['paterno']  ?></td>
                <td><?= $x['materno']  ?></td>
                <td><?= $x['nombre']  ?></td>
                <td><?= $x['fnacimiento']  ?></td>
                <td><?= $x['activo']  ?></td>
            </tr>
            <?php } ?>
        </tbody>
    </table>
</body>

</html>