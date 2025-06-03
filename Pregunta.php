<?php
class Pregunta
{
    private $pdo;

    public function __construct($pdo)
    {
        $this->pdo = $pdo;
    }

    public function create($enunciado, $evaluacion_id)
    {
        $sql = "INSERT INTO Pregunta (enunciado, evaluacion_id) VALUES (?, ?)";
        $stmt = $this->pdo->prepare($sql);
        return $stmt->execute([$enunciado, $evaluacion_id]);
    }

    public function getAll()
    {
        $sql = "SELECT * FROM Pregunta";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
