<?php
class Alternativa {
    private $pdo;

    public function __construct($conexion) {
        $this->pdo = $conexion;
    }

    public function create($pregunta_id, $texto, $es_correcta) {
        $sql = "INSERT INTO Alternativa (pregunta_id, texto, es_correcta) VALUES (?, ?, ?)";
        $stmt = $this->pdo->prepare($sql);
        $stmt->execute([$pregunta_id, $texto, $es_correcta]);
        return $this->pdo->lastInsertId();
    }

    public function getAll() {
        $sql = "SELECT * FROM Alternativa";
        $stmt = $this->pdo->query($sql);
        return $stmt->fetchAll(PDO::FETCH_ASSOC);
    }
}
?>
