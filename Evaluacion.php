<?php
class Evaluacion
{
    private $pdo;

    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    public function create($nombre, $area_id, $grado_id, $fecha)
    {
        $sql = "INSERT INTO Evaluacion (nombre, area_id, grado_id, fecha) VALUES (?, ?, ?, ?)";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([$nombre, $area_id, $grado_id, $fecha]);
    }

    public function getAll()
    {
        $sql = "SELECT * FROM Evaluacion";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
