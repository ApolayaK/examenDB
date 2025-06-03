<?php
class Evaluacion
{
    // Conexión a la base de datos
    private $pdo;

    // Constructor: recibe la conexión al iniciar el objeto
    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    // Método para insertar una nueva evaluación
    public function create($nombre, $area_id, $grado_id, $fecha)
    {
        // Sentencia SQL para insertar una evaluación
        $sql = "INSERT INTO Evaluacion (nombre, area_id, grado_id, fecha) VALUES (?, ?, ?, ?)";

        // Preparamos la consulta
        $stmt = $this->pdo->prepare($sql);

        // Ejecutamos con los valores reales
        return $stmt->execute([$nombre, $area_id, $grado_id, $fecha]);
    }

    // Método para obtener todas las evaluaciones
    public function getAll()
    {
        // Consulta SQL para seleccionar todas las evaluaciones
        $sql = "SELECT * FROM Evaluacion";

        // Ejecutamos directamente
        $stmt = $this->pdo->query($sql);

        // Retornamos todas como arreglo asociativo
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>